#Script que sumariza os usuarios por tempo do banco de dados.

import mysql.connector
from functions import get_tables, get_data_time
import sys
import json
import datetime

try:
    mydb = mysql.connector.connect(user="user", password="Senha@123!", host="mysql", database="data_alone", auth_plugin='mysql_native_password')
except Exception as error:
    print(" ERROR T1 - " + str(error))
    sys.exit()


list = []
sum = []
temp = []


def get_data_order_by_time():
    list = []
    sum = []
    temp = []
    a_count = ["0"]
    a_date = "nothing"
    a_time = "nothing"
    tables = get_tables(mydb)
    #print(tables)
    size = len(tables)
    #print("Size da tabela: " + str(size))
    print("-------------------------------")
    table_list = []

    x = 1
    for table in tables:
        table = table[0]
        table_list.append(table)

    result =  get_data_time(mydb, table_list)


    for i in result:
        text = str(i[5])
        #print(text)
        date_source  = text[:10]
        #print("date: " + date_source)
        time_source = text[11:13]
        #print("time: " + time_source)
        #print("-------------------------------")

        if a_date == "nothing":
            #print("date nothing")
            a_date = date_source
            a_time = time_source
            a_count = 1
            #print("count: " + str(a_count))
        else:
            if date_source == a_date:
                #print("date equal")
                if time_source == a_time:
                    #print("date equal and time equal")
                    a_count = a_count + 1
                    #print("count: " + str(a_count))
                else:
                    #print("date equal and time not equal")
                    #print("count: " + str(a_count))
                    #print("-------------------------------")
                    temp = [a_date, a_time, a_count]

                    sum.append(temp)
                    #print(sum)
                    a_time = time_source
                    a_count = 1
                    #print("count: " + str(a_count))
                    #print("-------------------------------")
            else:
                #print("data not equal")
                temp = [a_date, a_time, a_count]
                #print("count: " + str(a_count))


                sum.append(temp)
                #print(sum)
                a_date = date_source
                a_time = time_source
                a_count = 1
                #print("-------------------------------")

    #print("Last Data")
    temp = [a_date, a_time, a_count]
    sum.append(temp)
    #print("count: " + str(a_count))
    #print(sum)
    #print("-------------------------------")
    json_data = []
    p = 0
    for h in sum:
        json_data.append({"id":p, "data": {"date":sum[p][0], "hour":sum[p][1], "total_by_time":sum[p][2]}})
        p = p + 1
    print(sum)
    #print(json_data)
    new_json = json.dumps(json_data)
    print("####################")
    print(new_json)
    print("####################")
    return new_json

#get_data_order_by_time()
