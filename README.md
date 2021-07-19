# DesafioFinal-XP37

Desenvolvimento de um sistema de turismo com o intúito de disponibilizar uma plataforma de divulgação das cidades, com suas respectivas comodidades.

## Dependências

Esta aplicação tem como dependências: 
- ExpressJS
- Nodemon
- MySQL 2

## Clonando o repositório

No cmd, navegue até o diretório em que deseja clonar o repositório. 

Dentro do diretório, utilize o comando:

``` git clone https://github.com/LaraIasmine/DesafioFinal-XP37.git ```

## Instalando as dependencias

``` npm install ```

---
## Executando a aplicação

``` npm run dev```

## **Host e porta** 

<http://localhost:3000/>




Inserir métodos e endpoints

## **Instruções para teste**

1.  Clone o repositório
2.  Instale as dependências
3.  Abra o MySQL Workbench
4.  Entre em sua conexão
5.  Rode os seguintes scripts obrigatoriamente na seguinte ordem:

        inserir roteiro 

6.  Abra o arquivo [_dbconfig_](src/config/dbconfig.js) e substitua por suas informações de conexão, como no exemplo abaixo: 
    ```js
    module.exports = {
      host: 'localhost',
      user: 'SEU_USER',
      password: 'SUA_SENHA',
      db: 'gama-restapi',
    };
    ```
7. Rode o comando de execução e a mensagem "Conectado a base de dados" aparecerá no console. 


## **Métodos**