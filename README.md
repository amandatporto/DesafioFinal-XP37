# DesafioFinal-XP37

Desenvolvimento de um sistema de turismo com o intúito de disponibilizar uma plataforma de divulgação das cidades, com suas respectivas comodidades.

.:FlaminGO:. => O que você quer descobrir hoje?

## Tarefas

O controle de tarefas desse projeto é realizado pelo Notion e pelo Github:
https://www.notion.so/fej0se/905df93430404204948cd1b94c8c1451?v=13dbb68335ff4f5fba9fff30f34569a7
https://github.com/amandatporto/DesafioFinal-XP37.git

## Dependências

Esta aplicação tem como dependências: 
- ExpressJS
- Nodemon
- MySQL 2

## Clonando o repositório

No cmd, navegue até o diretório em que deseja clonar o repositório. 

Dentro do diretório, utilize o comando:

``` git clone https://github.com/amandatporto/DesafioFinal-XP37.git ```

## Instalando as dependencias

``` npm install ```

---

## Executando a aplicação

``` npm run dev ```

## **Host e porta** 

<http://localhost:3000/>

---

Inserir métodos e endpoints

## **Instruções para teste**

1.  Clone o repositório
2.  Instale as dependências
3.  Abra o MySQL Workbench
4.  Entre em sua conexão
5.  Rode os seguintes scripts obrigatoriamente na seguinte ordem:
      1. Base de Dados/base_dados.sql
      2. Base de Dados/dados_teste.sql
6.  Abra o arquivo [_bdconfig_](src/config/bdconfig.js) e substitua por suas informações de conexão, como no exemplo abaixo: 
    ```js
    module.exports = {
      host: 'localhost',
      user: 'SEU_USER',
      password: 'SUA_SENHA',
      db: 'gama-restapi',
    };
    ```
7. Rode o comando de execução e a mensagem "Conectado a base de dados" aparecerá no console. 
