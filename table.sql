use restaurant_databases;

create table if not exists restaurant_databases.Restaurant
(
    rest_id     integer not null,
    rest_name   varchar(40) not null,
    rest_location  varchar(256) not null,
    rest_size varchar(256) null,
    PRIMARY KEY (rest_id)
);

create table if not exists restaurant_databases.Dish
(
    dish_id     integer not null,
    dish_name   varchar(256) not null,
    flavor  varchar(256) not null,
    dish_description varchar(256) not null,
    serve_size varchar(256) null,
    PRIMARY KEY (dish_id)
);

create table if not exists restaurant_databases.Serve
(
    rest_id     integer not null,
    dish_id     integer not null,
    serve_time   datetime not null,
    price  varchar(256) not null,
    PRIMARY KEY (rest_id, dish_id),
    FOREIGN KEY (rest_id) REFERENCES restaurant_databases.Restaurant(rest_id),
    FOREIGN KEY (dish_id) REFERENCES restaurant_databases.Dish(dish_id)
);
