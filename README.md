# README

* base de datos local conf
  database: heyiamheredb 
  usuario: uheyiamhere
  password: 123456789

    sudo -u postgres psql

    CREATE DATABASE heyiamheredb;
        
    create user uheyiamhere with password '123456789';

    GRANT ALL PRIVILEGES ON DATABASE "heyiamheredb" to uheyiamhere;

    salirse de la bd --> \q

    conectarse a la db --> sudo -u postgres psql heyiamheredb


* Ejemplo creacion de mensajes

    - POST
    - https://heyiamhere.herokuapp.com/messages
    - data:
    {"messages": [
        {"article_id":1,"motion":true, "latitud":"34.4", "longitud": "1.4", "radius": "0", "message_time": "2016-09-24 19:34:30 -0500" },
        {"article_id":1,"motion":true, "latitud":"34.4", "longitud": "1.4", "radius": "20", "message_time": "2016-09-24 19:34:30 -0500" },
        {"article_id":1,"motion":true, "latitud":"34.4", "longitud": "1.4", "radius": "40", "message_time": "2016-09-24 19:34:30 -0500" }
    ]}

* Consulta de mensajes

    - GET
    - https://heyiamhere.herokuapp.com/messages
    
