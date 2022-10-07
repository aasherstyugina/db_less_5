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
  "statNr" int UNIQUE,
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

ALTER TABLE "Room" ADD FOREIGN KEY ("statNr") REFERENCES "Patient" ("statNr");

ALTER TABLE "Room" ADD FOREIGN KEY ("roomNr") REFERENCES "Patient" ("roomNr");

ALTER TABLE "Patient" ADD FOREIGN KEY ("statNr") REFERENCES "Doctor" ("statNr");

ALTER TABLE "Caregiver" ADD FOREIGN KEY ("persNr") REFERENCES "Station_Personell" ("persNr");

ALTER TABLE "Doctor" ADD FOREIGN KEY ("persNr") REFERENCES "Station_Personell" ("persNr");

ALTER TABLE "Room" ADD FOREIGN KEY ("statNr") REFERENCES "Station" ("statNr");

ALTER TABLE "Station_Personell" ADD FOREIGN KEY ("statNr") REFERENCES "Station" ("statNr");
