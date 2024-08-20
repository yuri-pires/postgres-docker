## Configuração de Ambiente com Docker Compose: PostgreSQL e pgAdmin

Este projeto configura um ambiente de banco de dados utilizando Docker, com PostgreSQL e pgAdmin. Siga as instruções abaixo para executar os serviços.

#### Pré-requisitos

- [Docker](https://docs.docker.com/engine/install/)

### Configurar o ambiente

Certifique-se de que o arquivo docker-compose.yml está configurado conforme necessário.

##### Banco de Dados:

- Usuário: postgres
- Senha: postgres
- Porta: 5432

#### pgAdmin:
- E-mail: yuri@gmail.com
- Senha: yuri
- Porta: 8080

### Subir os containers

Execute o seguinte comando para ter o ambiente de desenvolvimento local construído:

```shell
docker-compose up -d
```

#### Este comando vai:

- Iniciar um container com o PostgreSQL, criando um banco de dados inicial a partir do arquivo produtos.sql.
- Iniciar um container com o pgAdmin, uma interface web para gerenciar o banco de dados PostgreSQL.

### Acessar o pgAdmin

Acesse o pgAdmin na seguinte URL

```shell
http://localhost:8080
```

Use o e-mail e senha definidos para login:

- E-mail: yuri@gmail.com
- Senha: yuri

### Configurar o servidor no pgAdmin

Após o login no pgAdmin, siga os passos abaixo para configurar a conexão com o PostgreSQL:

- No painel esquerdo, clique com o botão direito em "Servers" e selecione "Create" > "Server".
- No campo "Name", insira um nome para o servidor (por exemplo, Local PostgreSQL).
- Na aba "Connection", preencha os seguintes campos:
  - Host: postgres-docker
  - Port: 5432
  - Username: postgres
  - Password: postgres
  - Clique em "Save".

Agora, você pode gerenciar seu banco de dados PostgreSQL através do pgAdmin.

### Volumes

Os dados do PostgreSQL e as configurações do pgAdmin são persistidos nos seguintes volumes locais dentro do diretório desse projeto:

```
PostgreSQL: ./data/postgres
pgAdmin: ./data/pgadmin
```


