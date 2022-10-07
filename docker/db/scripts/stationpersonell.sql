CREATE TABLE "Station_Personell" (
  "persNr" int PRIMARY KEY,
  "name" string,
  "statNr" int
);

CREATE TABLE "Caregiver" (
  "persNr" int PRIMARY KEY,
  "name" string,
  "statNr" int,
  "qualification" string
);

CREATE TABLE "Doctor" (
  "persNr" int PRIMARY KEY,
  "name" string,
  "statNr" int,
  "area" string,
  "rank" string
);

CREATE TABLE "Patient" (
  "patientNr" int PRIMARY KEY,
  "name" string,
  "disease" string,
  "statNr" int,
  "roomNr" int,
  "from" string,
  "to" string
);

CREATE TABLE "Station" (
  "statNr" int PRIMARY KEY,
  "name" string
);

CREATE TABLE "Room" (
  "statNr" int,
  "roomNr" int,
  "beds" int,
  PRIMARY KEY ("statNr", "roomNr")
);

ALTER TABLE "Patient" ADD FOREIGN KEY ("patientNr") REFERENCES "Doctor" ("persNr");

ALTER TABLE "Caregiver" ADD FOREIGN KEY ("persNr") REFERENCES "Station_Personell" ("persNr");

ALTER TABLE "Doctor" ADD FOREIGN KEY ("persNr") REFERENCES "Station_Personell" ("persNr");

ALTER TABLE "Patient" ADD FOREIGN KEY ("patientNr") REFERENCES "Room" ("roomNr");

ALTER TABLE "Patient" ADD FOREIGN KEY ("patientNr") REFERENCES "Room" ("statNr");

ALTER TABLE "Room" ADD FOREIGN KEY ("roomNr") REFERENCES "Station" ("statNr");

ALTER TABLE "Station_Personell" ADD FOREIGN KEY ("persNr") REFERENCES "Station" ("statNr");
