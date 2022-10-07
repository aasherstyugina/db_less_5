CREATE TABLE "Station" (
  "name" varchar PRIMARY KEY,
  "tracks" int,
  "city" varchar,
  "region" varchar,
  "arrival" varchar,
  "departure" varchar
);

CREATE TABLE "Train" (
  "trainNr" varchar PRIMARY KEY,
  "length" int,
  "from" varchar,
  "to" varchar
);

CREATE TABLE "City" (
  "name" varchar PRIMARY KEY,
  "region" varchar
);

ALTER TABLE "Station" ADD FOREIGN KEY ("name") REFERENCES "City" ("name");

ALTER TABLE "Train" ADD FOREIGN KEY ("trainNr") REFERENCES "Station" ("name");
