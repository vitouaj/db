CREATE TABLE "Units"(
    "id" VARCHAR(255) NOT NULL,
    "module id" INTEGER NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "description" TEXT NULL,
    "created at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "updated at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL
);
ALTER TABLE
    "Units" ADD PRIMARY KEY("id");
CREATE TABLE "Subjects"(
    "id" INTEGER NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "description" TEXT NOT NULL,
    "created at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "updated at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL
);
ALTER TABLE
    "Subjects" ADD PRIMARY KEY("id");
CREATE TABLE "Modules"(
    "id" INTEGER NOT NULL,
    "course id" VARCHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "description" TEXT NULL,
    "started date" DATE NOT NULL,
    "ended date" DATE NOT NULL,
    "created at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "updated at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "number of hours" DOUBLE PRECISION NOT NULL
);
ALTER TABLE
    "Modules" ADD PRIMARY KEY("id");
CREATE TABLE "Courses"(
    "id" VARCHAR(255) NOT NULL,
    "grade id" INTEGER NOT NULL,
    "subject id" INTEGER NOT NULL,
    "highest_score" DOUBLE PRECISION NOT NULL,
    "passing_score" DOUBLE PRECISION NOT NULL,
    "description" TEXT NULL
);
ALTER TABLE
    "Courses" ADD PRIMARY KEY("id");
CREATE TABLE "Grades"(
    "id" INTEGER NOT NULL,
    "level" INTEGER NOT NULL
);
ALTER TABLE
    "Grades" ADD PRIMARY KEY("id");
ALTER TABLE
    "Courses" ADD CONSTRAINT "courses_subject id_foreign" FOREIGN KEY("subject id") REFERENCES "Subjects"("id");
ALTER TABLE
    "Units" ADD CONSTRAINT "units_module id_foreign" FOREIGN KEY("module id") REFERENCES "Modules"("id");
ALTER TABLE
    "Modules" ADD CONSTRAINT "modules_grade subject id_foreign" FOREIGN KEY("grade subject id") REFERENCES "Courses"("id");
ALTER TABLE
    "Courses" ADD CONSTRAINT "courses_grade id_foreign" FOREIGN KEY("grade id") REFERENCES "Grades"("id");