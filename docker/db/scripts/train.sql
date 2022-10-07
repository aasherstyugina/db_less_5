CREATE TABLE "Station" (
  "name" string PRIMARY KEY,
  "tracks" int,
  "city" string,
  "region" string,
  "arrival" datetime,
  "departure" datetime
);

CREATE TABLE "Train" (
  "trainNr" int PRIMARY KEY,
  "length" int,
  "from" string,
  "to" string
);

CREATE TABLE "City" (
  "name" string,
  "region" string,
  PRIMARY KEY ("name", "region")
);

ALTER TABLE "Station" ADD FOREIGN KEY ("name") REFERENCES "City" ("name");

ALTER TABLE "Station" ADD FOREIGN KEY ("name") REFERENCES "City" ("region");

ALTER TABLE "Train" ADD FOREIGN KEY ("trainNr") REFERENCES "Station" ("name");
