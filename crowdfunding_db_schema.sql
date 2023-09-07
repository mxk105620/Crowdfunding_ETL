-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/XRggwS
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- DROP TABLE IF EXISTS category_table CASCADE;
-- DROP TABLE IF EXISTS subcategory_table CASCADE;
-- DROP TABLE IF EXISTS campaign CASCADE;
-- DROP TABLE IF EXISTS contacts CASCADE;

CREATE TABLE "category_table" (
    "category_id" VARCHAR(4)   NOT NULL,
    "category" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_category_table" PRIMARY KEY (
        "category_id"
     )
);

SELECT * FROM category_table;

CREATE TABLE "subcategory_table" (
    "subcategory_id" VARCHAR(10)   NOT NULL,
    "subcategory" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_subcategory_table" PRIMARY KEY (
        "subcategory_id"
     )
);

SELECT * FROM subcategory_table;

CREATE TABLE "contacts" (
    "contact_id" VARCHAR(6)   NOT NULL,
    "first_name" VARCHAR(25)   NOT NULL,
    "last_name" VARCHAR(25)   NOT NULL,
    "email" VARCHAR(45)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

SELECT * FROM contacts;

CREATE TABLE "campaign" (
    "cd_id" VARCHAR(4)   NOT NULL,
    "contact_id" VARCHAR(6)   NOT NULL,
    "company_name" VARCHAR(70)   NOT NULL,
    "description" VARCHAR(70)   NOT NULL,
    "goal" FLOAT(25)   NOT NULL,
    "pledged" FLOAT(25)   NOT NULL,
    "outcome" VARCHAR(10)   NOT NULL,
    "backers_count" INTEGER   NOT NULL,
    "country" VARCHAR(2)   NOT NULL,
    "currency" VARCHAR(3)   NOT NULL,
    "launch_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "staff_pick" BOOLEAN   NOT NULL,
    "spotlight" BOOLEAN   NOT NULL,
    "category_id" VARCHAR(25)   NOT NULL,
    "subcategory_id" VARCHAR(25)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cd_id"
     )
);

SELECT * FROM campaign;

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category_table" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory_table" ("subcategory_id");