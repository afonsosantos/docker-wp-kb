# Docker Compose para Wordpress e Kanboard

Este repositório contém um ficheiro `docker-compose.yml` que configura um container para Wordpress e um outro container para a aplicação Kanboard.

## Serviços

- [MySQL 5.7]()
- [Wordpress]()
- [Kanboard]()

## Instalação/Configuração

1. Clonar o repositório:

    `git clone https://github.com/afonsosantos/docker-wp-kb`

3. Configurar os seguintes campos para os valores adequados:
    
    - `VIRTUAL_HOST`
    - `LETSENCRYPT_HOST`
    - `LETSENCRYPT_EMAIL`
    
2. Iniciar os *containers* com os serviços:

    `docker-compose up -d`

## Fontes

- Wordpress: [**site do wordpress c/ docker-compose**]()
- Kanboard: [**site do kanboard c/ docker-compose**]()

## Licença

[Apache-2.0](LICENSE)