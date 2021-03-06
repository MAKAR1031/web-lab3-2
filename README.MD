# Лабораторные работаы №3, 4 #
## По дисциплине "Технологии разработки веб приложений", семестр 2 ##
## Лабораторная работа №3 ##
### Задание ###
1. Создать новое приложение с флагом --api
1. В качестве шаблонизатора использовать [fast_jsonapi](https://github.com/Netflix/fast_jsonapi)
1. Реализовать функционал, аналогичный Node-приложению из первой лабораторной работы
1. Адаптировать React-приложение для работы с новым сервером


### Настройка ###
1. [config](client/src/js/api/config.json.sample) содержит пример настройки базовога адреса сервера, к которому обращается клиентская часть

### Установка и запуск ###
1. Выполнить команду `npm install` в директориях **client**, **server**.
1. Для запуска
    * серверной части выполнить в директории **server**:
    ```
    bundler install
    rake db:create db:migrate
    rails s
    ```
    * клиентской части выполнить `npm start` в директории **client**

## Лабораторная работа №4 ##
### Цель работы ###
Познакомиться с основами контейнеризации и развертывания приложений с использованием Docker.

### Задание ###
1. Разработать Dockerfile для backend и frontend приложений
1. Создать конфигурацию для Compose, включающую в себя три сервиса: Frontend, API, БД
1. БД не должна удаляться при удалении контейнера

### Сборка и запуск ###
Создать файл *client/src/js/api/config.json* на основе [примера](client/src/js/api/config.json.sample)
в *baseUrl* указать адрес, на котором будет запущена серверная часть, после чего выполнить последовательность команд:

1. `docker-compose build`
1. `docker-compose up`
1. `docker-compose run api rake db:create db:migrate`
1. `docker-compose down`
1. `docker-compose up`