CREATE TABLE "campaign" (
    "cf_id" int PRIMARY KEY NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(60)   NOT NULL,
    "description" text   NOT NULL,
    "goal" double   NOT NULL,
    "pledged" double   NOT NULL,
    "outcome" varchar(50)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(5)   NOT NULL,
    "currency" varchar(5)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_ids" varchar(10)   NOT NULL,
    "subcategory_id" varchar(10)   NOT NULL
);

CREATE TABLE "category" (
    "category_ids" varchar(10) PRIMARY KEY  NOT NULL,
    "category_name" varchar(50)   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(10) PRIMARY KEY  NOT NULL,
    "subcategory_name" varchar(50)   NOT NULL,
);

CREATE TABLE "contacts" (
    "contact_id" int PRIMARY KEY  NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "email" varchar(100)   NOT NULL,
);


ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_ids")
REFERENCES "category" ("category_ids");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");