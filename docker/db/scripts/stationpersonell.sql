CREATE TABLE "Station_Personell" (
  "persNr" int PRIMARY KEY,
  "name" varchar,
  "statNr" int
);

CREATE TABLE "Caregiver" (
  "persNr" int PRIMARY KEY,
  "name" varchar,
  "statNr" int,
  "qualification" varchar
);

CREATE TABLE "Doctor" (
  "persNr" int PRIMARY KEY,
  "name" varchar,
  "statNr" int,
  "area" varchar,
  "rank" varchar
);

CREATE TABLE "Patient" (
  "patientNr" int PRIMARY KEY,
  "name" varchar,
  "disease" varchar,
  "statNr" int,
  "roomNr" int,
  "from" varchar,
  "to" varchar
);

CREATE TABLE "Station" (
  "statNr" int PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "Room" (
  "roomNr" int PRIMARY KEY,
  "statNr" int,
  "beds" int
);

ALTER TABLE "Patient" ADD FOREIGN KEY ("patientNr") REFERENCES "Doctor" ("persNr");

ALTER TABLE "Caregiver" ADD FOREIGN KEY ("persNr") REFERENCES "Station_Personell" ("persNr");

ALTER TABLE "Doctor" ADD FOREIGN KEY ("persNr") REFERENCES "Station_Personell" ("persNr");

ALTER TABLE "Patient" ADD FOREIGN KEY ("patientNr") REFERENCES "Room" ("roomNr");

ALTER TABLE "Room" ADD FOREIGN KEY ("roomNr") REFERENCES "Station" ("statNr");

ALTER TABLE "Station_Personell" ADD FOREIGN KEY ("persNr") REFERENCES "Station" ("statNr");
