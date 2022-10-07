CREATE TABLE "Station" (
  "name" varchar PRIMARY KEY,
  "tracks" int,
  "city" varchar,
  "region" varchar,
  "arrival" datetime,
  "departure" datetime
);

CREATE TABLE "Train" (
  "trainNr" int PRIMARY KEY,
  "length" int,
  "from" varchar,
  "to" varchar
);

CREATE TABLE "City" (
  "name" varchar,
  "region" varchar,
  PRIMARY KEY ("name", "region")
);

ALTER TABLE "Station" ADD FOREIGN KEY ("name") REFERENCES "City" ("name");

ALTER TABLE "Station" ADD FOREIGN KEY ("name") REFERENCES "City" ("region");

ALTER TABLE "Train" ADD FOREIGN KEY ("trainNr") REFERENCES "Station" ("name");
