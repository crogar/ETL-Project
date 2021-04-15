CREATE TABLE "daily_Price" (
    "id" int   NOT NULL,
    "coin_id" int   NOT NULL,
    "date" DATE   NOT NULL,
    "open" decimal   NOT NULL,
    "high" decimal   NOT NULL,
    "low" decimal   NOT NULL,
    "close" decimal   NOT NULL,
    CONSTRAINT "pk_daily_Price" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "coins" (
    "id" int   NOT NULL,
    "coin_name" varchar(50)   NOT NULL,
    "coin_symbol" varchar(50)   NOT NULL,
    "latest_price" decimal   NOT NULL,
    CONSTRAINT "pk_coins" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "hourly_price" (
    "id" int   NOT NULL,
    "coin_id" int   NOT NULL,
    "date" DATE   NOT NULL,
    "open" decimal   NOT NULL,
    "high" decimal   NOT NULL,
    "low" decimal   NOT NULL,
    "close" decimal   NOT NULL,
    CONSTRAINT "pk_hourly_price" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "daily_Price" ADD CONSTRAINT "fk_daily_Price_coin_id" FOREIGN KEY("coin_id")
REFERENCES "coins" ("id");

ALTER TABLE "hourly_price" ADD CONSTRAINT "fk_hourly_price_coin_id" FOREIGN KEY("coin_id")
REFERENCES "coins" ("id");
