![](https://pyvoice-assets.s3.amazonaws.com/logotipos/cover.png =3500x720)

# Docker Compose para Wordpress e Kanboard

Este repositório contém um ficheiro `docker-compose.yml` que cria e configura *containers* para vários serviços, como Wordpress, Kanboard e MySQL.

## Funcionamento

**Este repositório deve ser utilizado em conjunto com um *proxy***, visto que estamos a servir vários serviços (Wordpress e Kanboard) no mesmo servidor, na mesma porta (80 e 443). O *proxy* utilizado está presente [neste repositório](https://github.com/evertramos/docker-compose-letsencrypt-nginx-proxy-companion), e permite servir vários *containers* Docker no mesmo servidor, na mesma porta, mas em diferentes domínios/subdomínios, com SSL incluído através do serviço [Let's Encrypt](https://letsencrypt.org/).

## Serviços

- [MySQL 5.7](https://hub.docker.com/_/mysql)
- [Wordpress](https://hub.docker.com/_/wordpress)
- [Kanboard](https://docs.kanboard.org/en/latest/admin_guide/docker.html)

## Instalação/Configuração

1. Configurar o [*proxy*](#Funcionamento)

2. Clonar o repositório:

    `git clone https://github.com/pyVoice/docker-wp-kb`

3. Configurar os seguintes campos para os valores adequados:
    
    - `VIRTUAL_HOST`
    - `LETSENCRYPT_HOST`
    - `LETSENCRYPT_EMAIL`

4. Configurar o ficheiro [01-databases.sql](docker/provision/mysql/init/01-databases.sql) com os valores corretos
    
5. Iniciar os *containers* com os serviços:

    `docker-compose up -d`

### Notas

O ficheiro [01-databases.sql](docker/provision/mysql/init/01-databases.sql) contém código SQL que será executado quando o *container* do serviço MySQL for iniciado. O nome das bases de dados lá especificadas tem de ser igual ao nome das bases de dados configuradas no ficheiro [docker-compose.yml](docker-compose.yml) para cada serviço.

## Licença

[Apache-2.0](LICENSE)
