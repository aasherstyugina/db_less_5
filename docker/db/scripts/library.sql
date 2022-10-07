CREATE TABLE "Reader" (
  "id" int PRIMARY KEY,
  "surname" varchar,
  "name" varchar,
  "address" varchar,
  "birth" datetime
);

CREATE TABLE "Book" (
  "isbn" varchar PRIMARY KEY,
  "year" int,
  "name" varchar,
  "author" varchar,
  "num_of_pages" int
);

CREATE TABLE "Book_Copy" (
  "id" int PRIMARY KEY,
  "position" int
);

CREATE TABLE "Category" (
  "name" varchar PRIMARY KEY
);

CREATE TABLE "Publishing_House" (
  "name" varchar PRIMARY KEY,
  "address" varchar
);

CREATE TABLE "Library" (
  "name" varchar PRIMARY KEY
);

CREATE TABLE "Rent" (
  "return" datetime PRIMARY KEY
);

ALTER TABLE "Book" ADD FOREIGN KEY ("isbn") REFERENCES "Publishing_House" ("name");

ALTER TABLE "Book_Copy" ADD FOREIGN KEY ("id") REFERENCES "Book" ("isbn");

CREATE TABLE "Book_Category" (
  "Book_isbn" varchar NOT NULL,
  "Category_name" varchar NOT NULL,
  PRIMARY KEY ("Book_isbn", "Category_name")
);

ALTER TABLE "Book_Category" ADD FOREIGN KEY ("Book_isbn") REFERENCES "Book" ("isbn");

ALTER TABLE "Book_Category" ADD FOREIGN KEY ("Category_name") REFERENCES "Category" ("name");


ALTER TABLE "Book_Copy" ADD FOREIGN KEY ("id") REFERENCES "Library" ("name");

ALTER TABLE "Rent" ADD FOREIGN KEY ("return") REFERENCES "Reader" ("id");

ALTER TABLE "Rent" ADD FOREIGN KEY ("return") REFERENCES "Book_Copy" ("id");
