# API de Consulta do Twitter

API criada para consultar uma base MySQL que contém informações retiradas do Twitter

## Como subir localmente o projeto

Para rodar este ambiente localmente, basta entrar na pasta docker-compose e executar:

```bash
docker-compose up -d
```
OBS 01: necessário ter o docker-compose instalado, ou rodar a aplicação em um docker em modo swarm;


## Como este projeto funciona?

Para cumprir o que foi estabelecido no case, foram desenvolvidos três principais aplicações em Python:

-> um script que se conecta ao Twitter usando a biblioteca Tweepy, e captura os tweets de acordo com uma dada hashtag. Com estes dados salvos, o mesmo se conecta ao MySQL, verifica se a tabela com a hashtag existe. Se ela existe, o script dropa a mesma e recria uma nova, populando com os novos dados; se a tabela não existe, o script cria a nova tabela e popula a mesma com os dados.

-> um script que se conecta ao banco de dados, checa por todas as tabelas de hashtags existentes e procura nas mesmas se o campo de seguidores está preenchido (NOT NULL). Caso não esteja, o script se conecta com a API do twitter e busca a quantidade de seguidores daquele usuário específico. O processo se repete para todos os registros; Caso o campo de seguidores tenha algum valor, este script NÃO atualiza o mesmo.

-> uma pequena aplicação usando FLASK que é responsável por prover a interface web da API. Para tal, a mesma chama funções específicas para cada um dos requisitos do case: total de postagens agrupadas por hora, lista de cinco usuários com mais seguidores e total de postagens agrupados por hashtag ordenados por país e idioma.

As aplicações Python encontram-se dentro do diretório api, localizado na raiz do projeto.

Para servir a aplicação, um banco de dados MySQL foi modelado. A criação da base de dados do mesmo, bem como as credenciais de acesso são criadas dentro do Dockerfile referente ao banco de dados. Junto do Dockerfile encontram-se também os arquivos .sql referentes as amostras coletadas. Estes arquivos encontram-se dentro do diretório database localizado na raiz do projeto

Por fim, para prover um proxy reverso e também poder hospedar o index da interface web do projeto, encontra-se no diretório web-server um Dockerfile que cria um servidor Nginx, que expõe a porta 8080 para o mundo.


## Como popular o banco de dados?

Para popular o banco de dados com hashtags personalizadas, primeiro é preciso fazer uma pequena alteração nos arquivos get_tweets.py e get_followers.py. No início dos arquivos, basta alterar os campos  CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN e ACCESS_TOKEN_SECRET com os seus dados de cadastro da API do Twitter:

```python
auth = tweepy.OAuthHandler("CONSUMER_KEY", "CONSUMER_SECRET")
auth.set_access_token("ACCESS_TOKEN", "ACCESS_TOKEN_SECRET")
```

Seu ambiente de trabalho precisa estar rodando o Python na versão 3.7, e você precisará das biblioteca Tweepy e MySQL do Python. Para instalá-las, basta executar:

```bash
python3.7 -m pip install tweepy
python3.7 -m pip install mysql-connector-python
```

Feito isto, para popular o banco de dados com uma hashtag personalizada, basta executar:

```bash
python3.7 get_tweets.py SUA_HASHTAG_AQUI
```

Coletadas as Hashtags, basta rodar o get_followers.py:

```bash
python3.7 get_followers.py
```

OBS: Por conta das limitações da API do twitter, alguns erros de timeout podem acontecer nesta etapa. Basta executar novamente o comando para continuar do ponto de onde se parou. Este ponto está no ToDo do projeto.


## Como acessar a API

De modo a simplificar o uso da API, nenhum método de autenticação foi aplicado a esta API. O acesso as informações se dá acessando as seguintes URLs:

```bash
http://127.0.0.1:8080/api/get_data_order_by_time - ordenação por horário
http://127.0.0.1:8080/api/get_data_order_by_followers - ordenação por seguidores
http://127.0.0.1:8080/api/get_data_order_by_lang - ordenação por idioma
http://127.0.0.1:8080/api/get_data_order_by_country - ordenação por país
```

A resposta da API será o resultado em formato JSON.

OBS: O endereço 127.0.0.1 pode variar, de acordo com o seu setup de Docker.


## Como funciona a interface Web

Para entregar o conteúdo de maneira mais fácil, foram escritos scripts em linguagem R usando a biblioteca shiny. O shiny é uma biblioteca responsável por criar toda a estrutura HTML/Javascript/CSS da página, com a facilidade de se poder publicar sua aplicação em ambientes como https://www.shinyapps.io, que em linhas gerias funcionam como um Lambda da AWS: ao se chamar a URL do projeto, o shinyapps instancia um contêiner e executa a sua aplicação. Quando o usuário sai da página, a mesma é encerrada.
Para cada uma das solicitações presentes no case foi criado um script R separado, responsável por chamar a API, ler o JSON resultante e montar a tabela para ser renderizada pelo shiny. Os scripts R encontram-se no diretório r_scripts presente na raiz do projeto

Para se reproduzir o ambiente gráfico localmente, você precisará do RStudio e também do linguagem R instalada em seu computador. Uma vez que estas ferramentas foram instaladas, você vai precisar instalar as bibliotecas do projeto. Para isso, abra um novo script R no RStudio e digite:

```bash
install.packages("shiny")
install.packages("httr")
install.packages("dplyr")
```

Selecine as linhas acima e clique em Run App. o RStudio irá proceder a instalação das mesmas.

Com o ambiente assim, você poderá rodar localmente suas aplicações sem demais problemas. Para publicar suas aplicações no shinyapps.io, você deverá consultar a documentação presente em https://docs.rstudio.com/shinyapps.io/ .


## ToDo

01 - Corrigir o arquivo get_followers.py, de modo que os erros de timeout gerados pela API do Twitter não explodam para o usuário, e que o script continue do ponto de onde parou;

02 - Unir em um local único as informações de acesso da API do Twitter e também as informações de acesso do banco de dados

