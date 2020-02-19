#Script que sumariza os usuarios por pais do banco de dados.

import mysql.connector
from functions import get_tables, get_data_country
import sys
import json
import time

start_time = ""
end_time = ""
delta_time = ""

try:
    mydb = mysql.connector.connect(user="user", password="Senha@123!", host="mysql", database="data_alone", auth_plugin='mysql_native_password')
except Exception as error:
    print(" ERROR C - " + str(error))
    sys.exit()

def order_data(mydb, table):
    list = []
    sum = []
    temp = []
    a_count = ["0"]
    a_location = "nothing"
    #print("*****************************")
    #print("Tabela: " + table)
    #print("*****************************")
    result =  get_data_country(mydb, table)

    #print(result)
    for i in result:
        location = str(i[0])
        #print(location)

        if a_location == "nothing":
            #print("location nothing")
            a_location = location
            a_count = 1
            #print("count: " + str(a_count))
        else:
            if location == a_location:
                #print("location equal")
                a_count = a_count + 1
                #print("count: " + str(a_count))
            else:
                #print("location not equal")
                #print("count: " + str(a_count))
                #print("-------------------------------")
                temp = [a_location, a_count, table]

                sum.append(temp)
                #print(sum)
                a_location = location
                a_count = 1
                #print("count: " + str(a_count))
                #print("-------------------------------")

    #print("Last Location")
    temp = [a_location, a_count, table]
    sum.append(temp)
    #print("count: " + str(a_count))
    #print(sum)
    #print("-------------------------------")
    return sum


def get_data_order_by_country():
    data = []
    start_time = time.time()
    #print(start_time)
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

#get_data_order_by_country()
