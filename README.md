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


* Ejemplo creacion de mensajes con la ubicacion actual asociada a un articulo.

    - POST
    - https://heyiamhere.herokuapp.com/messages
    - request:
    {"messages": [
        {"article_id":1,"motion":true, "latitud":"34.4", "longitud": "1.4", "radius": "0", "message_time": "2016-09-24 19:34:30 -0500" },
        {"article_id":1,"motion":true, "latitud":"34.4", "longitud": "1.4", "radius": "20", "message_time": "2016-09-24 19:34:30 -0500" },
        {"article_id":1,"motion":true, "latitud":"34.4", "longitud": "1.4", "radius": "40", "message_time": "2016-09-24 19:34:30 -0500" }
    ]}

* Consulta de mensajes por articulo

    - GET
    - https://heyiamhere.herokuapp.com/articles/:article_id/messages
    
* Crear ubicacion incial de articulo a trackear.

    - POST
    - https://heyiamhere.herokuapp.com/articles
    - request:
      {"name": "hijo de jubel", 
       "description": "supermercado", 
       "user_id": 1, 
       "tracking": true,
       "start_date": "2016-09-24 19:34:30 -0500",
       "end_date":"2016-09-24 19:34:30 -0500",
       "latitud": 65.1,
       "longitud":65.1,
       "max_radius_alert": 20}
    
