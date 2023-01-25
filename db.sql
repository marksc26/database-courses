CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" integer NOT NULL
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "level" varchar NOT NULL,
  "teacher" varchar NOT NULL
);

CREATE TABLE "course_video" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL,
  "course_id" uuid NOT NULL
);

CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar UNIQUE NOT NULL,
  "course_id" uuid NOT NULL
);

CREATE TABLE "course_user" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid NOT NULL,
  "course_id" uuid NOT NULL
);

ALTER TABLE "course_user" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "course_user" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "categories" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");
