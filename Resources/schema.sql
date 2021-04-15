CREATE TABLE "Daily_Price" (
    "id" int   NOT NULL,
    "coin_id" int   NOT NULL,
    "date" DATE   NOT NULL,
    "open" decimal   NOT NULL,
    "high" decimal   NOT NULL,
    "low" decimal   NOT NULL,
    "close" decimal   NOT NULL,
    CONSTRAINT "pk_Daily_Price" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Coins" (
    "id" int   NOT NULL,
    "coin_name" varchar(50)   NOT NULL,
    "coin_symbol" varchar(50)   NOT NULL,
    "latest_price" decimal   NOT NULL,
    CONSTRAINT "pk_Coins" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Hourly_price" (
    "id" int   NOT NULL,
    "coin_id" int   NOT NULL,
    "date" DATE   NOT NULL,
    "open" decimal   NOT NULL,
    "high" decimal   NOT NULL,
    "low" decimal   NOT NULL,
    "close" decimal   NOT NULL,
    CONSTRAINT "pk_Hourly_price" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "Daily_Price" ADD CONSTRAINT "fk_Daily_Price_coin_id" FOREIGN KEY("coin_id")
REFERENCES "Coins" ("id");

ALTER TABLE "Hourly_price" ADD CONSTRAINT "fk_Hourly_price_coin_id" FOREIGN KEY("coin_id")
REFERENCES "Coins" ("id");

