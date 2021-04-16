CREATE TABLE "daily_price" (
    id SERIAL ,
    "coin_id" int   ,
    "date" VARCHAR,
    "open" decimal   ,
    "high" decimal   ,
    "low" decimal   ,
    "close" decimal   ,
    CONSTRAINT "pk_daily_price" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "coins" (
    "id" int   ,
    "coin_name" varchar(50)   ,
    "coin_symbol" varchar(50)   ,
    "latest_price" decimal   ,
    CONSTRAINT "pk_coins" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "hourly_price" (
    id SERIAL ,
    "coin_id" int   ,
    "date" VARCHAR,
    "open" decimal   ,
    "high" decimal   ,
    "low" decimal   ,
    "close" decimal   ,
    CONSTRAINT "pk_hourly_price" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "daily_price" ADD CONSTRAINT "fk_daily_price_coin_id" FOREIGN KEY("coin_id")
REFERENCES "coins" ("id");

ALTER TABLE "hourly_price" ADD CONSTRAINT "fk_hourly_price_coin_id" FOREIGN KEY("coin_id")
REFERENCES "coins" ("id");
