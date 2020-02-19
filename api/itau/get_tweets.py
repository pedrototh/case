#Script que se conecta na API do twitter, busca determinada tag e salva em banco

import tweepy
import mysql.connector
import sys
from functions import checkTable, insert_database, get_country

auth = tweepy.OAuthHandler("CONSUMER_KEY", "CONSUMER_SECRET")
auth.set_access_token("ACCESS_TOKEN", "ACCESS_TOKEN_SECRET")


mydb = mysql.connector.connect(
   host="127.0.0.1",
   user="user",
   passwd="Senha@123!",
   database="data_alone"
)

mydb.set_charset_collation(charset="utf8mb4", collation="utf8mb4_bin")

try:
    user_tag = sys.argv[1]
except IndexError:
    print("\n\n")
    print("Uso: python3 personal__tweet.py HASHTAG (sem o #)\n\n")
    sys.exit()
else:
    checkTable(mydb, user_tag)
    tag = "%23" + user_tag
    api = tweepy.API(auth, wait_on_rate_limit="True", timeout=6000)

    for tweet in api.search(q=tag, count=100, result_type="recent",
            tweet_mode='extended'):

        user_id = f"{tweet.user.id}"
        print("User ID: " + str(user_id))


        user_name = f"{tweet.user.name}"
        print("User: " + user_name)

        tweet_id = f"{tweet.id}"
        print("Tweet ID: " + str(tweet_id))

        date_time = f"{tweet.created_at}"
        print("Date: " + date_time)

        tweet_text = f"{tweet.full_text}"
        print("Tweet: " + tweet_text)

        languague = f"{tweet.metadata}"
        lang = get_country(languague)
        print("Language: " + lang)

        country = f"{tweet.user.location}"
        print("Country: " + country)

        data = (user_id, user_name, tweet_id, tweet_text, date_time, lang, country)
        insert_database(mydb, user_tag, data)
        mydb.commit()


        print("\n")
        print("---------------------------------------------------------------")
        print("\n")



#print(tweet)
#mycursor = mydb.cursor()
