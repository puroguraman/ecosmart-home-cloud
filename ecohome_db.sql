-- Adminer 5.4.1 PostgreSQL 15.15 dump

DROP TABLE IF EXISTS "favorite_devices";
DROP SEQUENCE IF EXISTS favorite_devices_id_seq;
CREATE SEQUENCE favorite_devices_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."favorite_devices" (
    "id" integer DEFAULT nextval('favorite_devices_id_seq') NOT NULL,
    "device_external_id" integer NOT NULL,
    "device_name" character varying(100),
    "notes" text,
    "added_at" timestamp DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "favorite_devices_pkey" PRIMARY KEY ("id")
)
WITH (oids = false);


DROP TABLE IF EXISTS "maintenance_logs";
DROP SEQUENCE IF EXISTS maintenance_logs_id_seq;
CREATE SEQUENCE maintenance_logs_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."maintenance_logs" (
    "id" integer DEFAULT nextval('maintenance_logs_id_seq') NOT NULL,
    "device_name" character varying(100) NOT NULL,
    "service_date" date NOT NULL,
    "description" text,
    "cost" numeric(10,2) DEFAULT '0.00',
    CONSTRAINT "maintenance_logs_pkey" PRIMARY KEY ("id")
)
WITH (oids = false);

INSERT INTO "maintenance_logs" ("id", "device_name", "service_date", "description", "cost") VALUES
(1,	'Smart AirConditioner',	'2024-05-20',	'Annual chemical cleaning',	45.00),
(2,	'Smart AirConditioner',	'2026-01-13',	'',	80.00),
(3,	'Smart AirConditioner',	'2026-01-13',	'',	80.00),
(4,	'Tesla Charger',	'2026-01-13',	'',	80.00),
(5,	'Eco Fridge',	'2026-01-13',	'',	80.00),
(6,	'Smart AirConditioner',	'2026-01-13',	'',	10.00),
(7,	'Smart AirConditioner',	'2026-01-13',	'',	0.00),
(8,	'Eco Fridge',	'2026-01-13',	'Συντήρηση',	70.00);

-- 2026-01-13 22:01:40 UTC
