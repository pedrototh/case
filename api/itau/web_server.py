#!/usr/bin/python3.7

# Servidor que fornece a API atraves do Flask
# Cada entrada de app.route equivale a uma url da API

from flask import Flask
from flask import jsonify
from statistics__by_time import get_data_order_by_time
from statistics__by_country import  get_data_order_by_country
from statistics__by_language import get_data_order_by_lang
from statistics__by_followers import get_data_order_by_followers
import logging
from datetime import datetime


logging.basicConfig(filename='/var/log/api/flask.log',level=logging.DEBUG)
#logging.basicConfig(filename='flask.log',level=logging.DEBUG)
app = Flask(__name__)


@app.route('/', methods=['GET'])
def hello():
    return "Hello There!"



@app.route('/api/get_data_order_by_time', methods=['GET'])
def by_time():
    date = datetime.now()
    logging.info(str(date) + " - Inicio da Requisicao get_data_order_by_time")
    data = ""
    try:
        data = get_data_order_by_time()
    except Exception as error:
        print(str(date) + " ERROR T1 - " + str(error))
        logging.error(str(date) + " ERROR T1 - " + str(error))
        return({'erro': 'erro interno da aplicacao'}), 503
    end = datetime.now()
    logging.info(str(end) + " - Fim da Requisicao get_data_order_by_time")
    total_time = end - date
    logging.info(" Tempo de execucao - " + str(total_time.total_seconds()))
    return data



@app.route('/api/get_data_order_by_country', methods=['GET'])
def by_country():
    date = datetime.now()
    logging.info(str(date) + " - Inicio da Requisicao get_data_order_by_country")
    data = ""
    try:
        data = get_data_order_by_country()
    except Exception as error:
        print(str(date) + " ERROR C1 - " + str(error))
        logging.error(str(date) + " ERROR C1 - " + str(error))
        return({'erro': 'erro interno da aplicacao'}), 503
    end = datetime.now()
    logging.info(str(end) + " - Fim da Requisicao get_data_order_by_country")
    total_time = end - date
    logging.info(" Tempo de execucao - " + str(total_time.total_seconds()))
    return data



@app.route('/api/get_data_order_by_lang', methods=['GET'])
def by_lang():
    date = datetime.now()
    logging.info(str(date) + " - Inicio da Requisicao get_data_order_by_lang")
    data = ""
    try:
        data = get_data_order_by_lang()
    except Exception as error:
        print(str(date) + " ERROR L1 - " + str(error))
        logging.error(str(date) + " ERROR L1 - " + str(error))
        return({'erro': 'erro interno da aplicacao'}), 503
    end = datetime.now()
    logging.info(str(end) + " - Fim da Requisicao get_data_order_by_lang")
    total_time = end - date
    logging.info(" Tempo de execucao - " + str(total_time.total_seconds()))
    return data



@app.route('/api/get_data_order_by_followers', methods=['GET'])
def by_follow():
    date = datetime.now()
    logging.info(str(date) + " - Inicio da Requisicao get_data_order_by_followers")
    data = ""
    try:
        data = get_data_order_by_followers()
    except Exception as error:
        print(str(date) + " ERROR F1 - " + str(error))
        logging.error(str(date) + " ERROR F1 - " + str(error))
        return({'erro': 'erro interno da aplicacao'}), 503
    end = datetime.now()
    logging.info(str(end) + " - Fim da Requisicao get_data_order_by_followers")
    total_time = end - date
    logging.info(" Tempo de execucao - " + str(total_time.total_seconds()))
    return data



if __name__ == '__main__':
    app.run(host='0.0.0.0')
    #app.run(debug=True)
