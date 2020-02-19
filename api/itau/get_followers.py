#Este script atualiza as tabelas com o numero de seguidores do Twitter
# TODO: a API do Twitter retorna poucos usuarios por vez, gerando timeout neste script

import mysql.connector
import sys
import json
import tweepy
from functions import checkTable, get_tables, get_user_id, update_followers
from time import sleep

get_user = "SELECT user_id FROM "

auth = tweepy.OAuthHandler("CONSUMER_KEY", "CONSUMER_SECRET")
auth.set_access_token("ACCESS_TOKEN", "ACCESS_TOKEN_SECRET")

mydb = mysql.connector.connect(
   host="127.0.0.1",
   user="user",
   passwd="Senha@123!",
   database="data_alone"
)

tables = get_tables(mydb)

print("---------------------------------------------------")


def get_followers(tweeter_api, user_id, wait_time):
    sleep(wait_time)
    print("Dormi por " + str(wait_time) + " segundos")
    try:
        users = tweeter_api.followers_ids(id=user_id)
    except tweepy.error.TweepError:
        new_time = wait_time + 300
        users = get_followers(tweeter_api, user_id, wait_time)
        return len(users)
    return len(users)

x = 0


for table in tables:
    table = table[0]
    print("Tabela: " + table)
    user_list = get_user_id(mydb, table)
    for user in user_list:
        print("User " + str(x))
        user = user [0]
        print("User ID: " + user)
        api = tweepy.API(auth, wait_on_rate_limit="True", timeout=6000)
        num_followers = get_followers(api, user, 0)
        print("Followers: " + str(num_followers))
        update_followers(mydb, table, user, num_followers)
        x = x + 1
        print("---------------------------------------------------")
    #order_result = order_data(mydb, table)
    #print(order_result)
    #return order_result

#followers = get_followers(api, user_id)
#print("Followers: " + str(followers))
