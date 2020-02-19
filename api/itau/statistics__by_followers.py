#Script que sumariza os usuarios por seguidores do banco de dados.

import mysql.connector
from functions import get_tables, get_data_followers
import sys
import json
import datetime


try:
    mydb = mysql.connector.connect(user="user", password="Senha@123!", host="mysql", database="data_alone", auth_plugin='mysql_native_password')
except Exception as error:
    print(" ERROR F - " + str(error))
    sys.exit()


def order_data(data):
    json_data = []
    p = 0
    for h in data:
        json_data.append({"id":p, "data": {"user":data[p][2], "user_id":data[p][1], "followers": data[p][0]}})
        p = p + 1
    new_json = json.dumps(json_data)
    print("####################")
    print(new_json)
    print("####################")
    return new_json


def get_data_order_by_followers():
    tables = get_tables(mydb)
    #print(tables)
    size = len(tables)
    #print("Size da tabela: " + str(size))
    print("-------------------------------")

    table_list = []

    for table in tables:
        table = table[0]
        table_list.append(table)
        #order_result = order_data(mydb, table)
        #print(order_result)
    result =  get_data_followers(mydb, table_list)
    #print(result)
    order_result = order_data(result) 
    
    return order_result


get_data_order_by_followers()
