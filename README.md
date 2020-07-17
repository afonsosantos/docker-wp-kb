![pyVoice](https://pyvoice-assets.s3.amazonaws.com/logotipos/cover.png)

# Docker Compose para Wordpress e Kanboard

Este repositório contém um ficheiro `docker-compose.yml` que configura um container para Wordpress e um outro container para a aplicação Kanboard.

## Funcionamento

Este repositório deve ser utilizado em conjunto com um *proxy*, visto que estamos a servir vários serviços (Wordpress e Kanboard) no mesmo servidor, na mesma porta (80 e 443). O *proxy* utilizado está presente [neste repositório](https://github.com/evertramos/docker-compose-letsencrypt-nginx-proxy-companion), e permite servir vários *containers* Docker no mesmo servidor, na mesma porta, mas em diferentes domínios/subdomínios, com SSL incluído através do serviço Let's Encrypt.

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
    
4. Iniciar os *containers* com os serviços:

    `docker-compose up -d`

## Licença

[Apache-2.0](LICENSE)