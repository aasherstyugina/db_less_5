CREATE TABLE "Station" (
  "name" varchar PRIMARY KEY,
  "tracks" int,
  "city" varchar,
  "region" varchar,
  "arrival" varchar,
  "departure" varchar
);

CREATE TABLE "Train" (
  "trainNr" int PRIMARY KEY,
  "length" int,
  "from" varchar,
  "to" varchar
);

CREATE TABLE "City" (
  "name" varchar PRIMARY KEY,
  "region" varchar UNIQUE
);

CREATE TABLE "Connection" (
  "trainNr" int PRIMARY KEY,
  "from" varchar UNIQUE,
  "to" varchar UNIQUE,
  "arrival" varchar,
  "departure" varchar
);

ALTER TABLE "Station" ADD FOREIGN KEY ("city") REFERENCES "City" ("name");

ALTER TABLE "Station" ADD FOREIGN KEY ("region") REFERENCES "City" ("region");

ALTER TABLE "Train" ADD FOREIGN KEY ("trainNr") REFERENCES "Connection" ("trainNr");

ALTER TABLE "Train" ADD FOREIGN KEY ("from") REFERENCES "Connection" ("from");

ALTER TABLE "Train" ADD FOREIGN KEY ("to") REFERENCES "Connection" ("to");

ALTER TABLE "Connection" ADD FOREIGN KEY ("from") REFERENCES "Station" ("name");

ALTER TABLE "Connection" ADD FOREIGN KEY ("to") REFERENCES "Station" ("name");

ALTER TABLE "Connection" ADD FOREIGN KEY ("arrival") REFERENCES "Station" ("arrival");

ALTER TABLE "Connection" ADD FOREIGN KEY ("departure") REFERENCES "Station" ("departure");
