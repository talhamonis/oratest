CREATE TABLE "CAATDemo".countries (
  country_id CHAR(2 BYTE) NOT NULL,
  country_name VARCHAR2(40 BYTE) NOT NULL,
  region_id NUMBER,
  test01 NUMBER,
  PRIMARY KEY (country_id),
  CONSTRAINT fk_countries_regions FOREIGN KEY (region_id) REFERENCES "CAATDemo".regions (region_id) ON DELETE CASCADE
);
