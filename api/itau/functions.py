#Script que contem as pricipais funcoes usadas pelos scripts
# no comeco deste encontra-se a etrutura das chamadas SQL

import sys

create_query_01 = "CREATE TABLE "
create_query_02 = """ (id INT(255) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        user_id VARCHAR(300) NOT NULL, user_name VARCHAR(300) NOT NULL,
        tweet_id VARCHAR(300) NOT NULL, tweet_text VARCHAR(600) NOT NULL,
        date_time DATETIME NOT NULL, followers INT(255), lang VARCHAR(5),
        location VARCHAR(255))"""
drop_query_01 = "DROP TABLE "
emoji_support_01 = "ALTER TABLE "
emoji_support_02 = " CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci"
get_table_list = "SHOW TABLES"
get_data_01 = "SELECT * FROM "
get_data_02 = " ORDER BY date_time"
get_location_01 = "SELECT location FROM "
get_location_02 = " ORDER BY location;"
get_lang_01 = "SELECT lang FROM "
get_lang_02 = " ORDER BY lang;"
get_data_followers_01 = "SELECT followers, user_id, user_name FROM "
get_data_followers_02 = " ORDER BY followers DESC LIMIT 5;"
get_user_01 = "SELECT user_id FROM "
get_user_02 = " WHERE followers IS NULL"
update_followers_01 = "UPDATE "
update_followers_02 = " SET followers="
update_followers_03 = " WHERE user_id=";



#Funcao responsavel por checar se a tabela existe. Caso exita, eh dropada e outra criada no lugar
#adicionado tambem o suporte para emojis serem salvos na base
def checkTable(dbconnection, table):
    create_query = create_query_01 + table + create_query_02
    drop_query = drop_query_01 + table
    emoji_support = emoji_support_01 + table + emoji_support_02
    db = dbconnection.cursor()
    db.execute(""" SELECT COUNT(*) FROM information_schema.tables
        WHERE table_name = '{0}' """.format(table.replace('\'', '\'\'')))
    if db.fetchone()[0] == 1:
        db.execute(drop_query)
        db.execute(create_query)
        db.execute(emoji_support)
        db.close()
        print("\nTabela ja existente. Dropando os dados.\n")
    else:
        db.execute(create_query)
        db.execute(emoji_support)
        db.close()
        print("\nNenhuma tabela encontrada. Criando a estrutura.\n")



#Funcao que atualiza na base o numero de followers de um determinado usuario
def update_followers(dbconnection, table, user_id, followers):
    update_query = update_followers_01 + table + update_followers_02 + str(followers) + update_followers_03 + str(user_id)
    #print(update_query)
    #print(update_query)
    db = dbconnection.cursor()
    db.execute(update_query)
    dbconnection.commit()
    db.close()

def insert_database(dbconnection, table, data_input):
    insert_query = "INSERT INTO " + table + """ (user_id, user_name, tweet_id,
                    tweet_text, date_time, lang, location)
                    VALUES (%s, %s, %s, %s, %s, %s, %s)"""
    db = dbconnection.cursor()
    db.execute(insert_query, data_input)
    dbconnection.commit()
    db.close()



#Funcao que retorno o user_id dada uma determinada tabela
def get_user_id(dbconnection, table):
    query = get_user_01 + table + get_user_02
    db = dbconnection.cursor()
    db.execute(query)
    user_id = db.fetchall()
    #print("-------------------------------")
    #print("Tabelas encontradas: " + str(tables))
    db.close()
    return user_id



#funcao que retorna a substring contendo o pais do usuario
def get_country(message):
    country = message[23:25]
    return country



#Funcao que retorna as tabelas da base
def get_tables(dbconnection):
    db = dbconnection.cursor()
    db.execute(get_table_list)
    tables = db.fetchall()
    #print("-------------------------------")
    #print("Tabelas encontradas: " + str(tables))
    db.close()
    return tables



#Funcao que retorna os horarios da publicacoes do Twitter
def get_data_time(dbconnection, tables):
    x = 1
    query = ""

    for table in tables:
        if x == len(tables):
            query = query + table
        else:
            query = query + table + " UNION SELECT * from "
            x = x + 1

    get_data = get_data_01 + query + get_data_02
    db = dbconnection.cursor(buffered=True)
    db.execute(get_data)
    result = db.fetchall()
    db.close()
    return result



#Funcao que retorna o pais do usuario, dada uma determinada tabela
def get_data_country(dbconnection, table):
    query = get_location_01 + table + get_location_02
    db = dbconnection.cursor(buffered=True)
    db.execute(query)
    result = db.fetchall()
    db.close()
    return result



#Funcao que retorna o idioma do usuario, dada uma determinada tabela
def get_data_lang(dbconnection, table):
    query = get_lang_01 + table + get_lang_02
    db = dbconnection.cursor(buffered=True)
    db.execute(query)
    result = db.fetchall()
    db.close()
    return result



#funcao que retorna os 5 usuarios com mais seguidores, dada uma determinada tabela
def get_data_followers(dbconnection, tables):
    x = 1
    query = ""
    
    for table in tables:
        if x == len(tables):
            query = query + table
        else:
            query = query + table + " UNION SELECT followers, user_id, user_name FROM "
            x = x + 1
    
    query_r = get_data_followers_01 + query + get_data_followers_02
    #print(query_r)
    db = dbconnection.cursor(buffered=True)
    db.execute(query_r)
    result = db.fetchall()
    db.close()
    return result
