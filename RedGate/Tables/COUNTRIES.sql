CREATE TABLE "RedGate".countries (
  country_id CHAR(2 BYTE) NOT NULL,
  country_name VARCHAR2(40 BYTE) NOT NULL,
  region_id NUMBER,
  region_name CHAR(2 BYTE),
  PRIMARY KEY (country_id),
  CONSTRAINT fk_countries_regions FOREIGN KEY (region_id) REFERENCES "RedGate".regions (region_id) ON DELETE CASCADE
);
