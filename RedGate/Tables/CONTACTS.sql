CREATE TABLE "RedGate".contacts (
  contact_id NUMBER GENERATED BY DEFAULT AS IDENTITY,
  first_name VARCHAR2(255 BYTE) NOT NULL,
  last_name VARCHAR2(255 BYTE) NOT NULL,
  email VARCHAR2(255 BYTE) NOT NULL,
  phone VARCHAR2(20 BYTE),
  customer_id NUMBER,
  PRIMARY KEY (contact_id),
  CONSTRAINT fk_contacts_customers FOREIGN KEY (customer_id) REFERENCES "RedGate".customers (customer_id) ON DELETE CASCADE
);