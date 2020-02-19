#Script que sumariza os usuarios por linguagem do banco de dados.

import mysql.connector
from functions import get_tables, get_data_lang
import sys
import json
import datetime

try:
    mydb = mysql.connector.connect(user="user", password="Senha@123!", host="mysql", database="data_alone", auth_plugin='mysql_native_password')
except Exception as error:
    print(" ERROR L - " + str(error))
    sys.exit()

def order_data(mydb, table):
    list = []
    sum = []
    temp = []
    a_count = ["0"]
    a_lang = "nothing"
    #print("*****************************")
    #print("Tabela: " + table)
    #print("*****************************")
    result =  get_data_lang(mydb, table)

    #print(result)
    for i in result:
        language = str(i[0])
        #print(location)

        if a_lang == "nothing":
            #print("location nothing")
            a_lang = language
            a_count = 1
            #print("count: " + str(a_count))
        else:
            if language == a_lang:
                #print("location equal")
                a_count = a_count + 1
                #print("count: " + str(a_count))
            else:
                #print("location not equal")
                #print("count: " + str(a_count))
                #print("-------------------------------")
                temp = [a_lang, a_count, table]

                sum.append(temp)
                #print(sum)
                a_lang = language
                a_count = 1
                #print("count: " + str(a_count))
                #print("-------------------------------")

    #print("Last Location")
    temp = [a_lang, a_count, table]
    sum.append(temp)
    #print("count: " + str(a_count))
    #print(sum)
    #print("-------------------------------")
    return sum




def get_data_order_by_lang():
    data = []
    tables = get_tables(mydb)
    #print(tables)
    size = len(tables)
    #print("Size da tabela: " + str(size))
    print("-------------------------------")

    for table in tables:
        table = table[0]
        order_result = order_data(mydb, table)
        data = data + order_result
        #print(order_result)

    json_data = []
    p = 0
    for h in data:
            json_data.append({"id":p, "data": {"hashtag":data[p][2], "country":data[p][0], "count":data[p][1]}})
            p = p + 1
    new_json = json.dumps(json_data)
    print("####################")
    print(new_json)
    print("####################")
    return new_json


#get_data_order_by_lang()
