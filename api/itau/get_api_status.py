#Funcao que retorna o status de uso da API do Twitter

import tweepy
import json

auth = tweepy.OAuthHandler("CONSUMER_KEY", "CONSUMER_SECRET")
auth.set_access_token("ACCESS_TOKEN", "ACCESS_TOKEN_SECRET")

api = tweepy.API(auth)
api_status = api.rate_limit_status()
print(json.dumps(api_status, indent=1))
