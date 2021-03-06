CREATE TABLE "CAATDemo".employees (
  employee_id NUMBER GENERATED BY DEFAULT AS IDENTITY,
  first_name VARCHAR2(255 BYTE) NOT NULL,
  last_name VARCHAR2(255 BYTE) NOT NULL,
  email VARCHAR2(255 BYTE) NOT NULL,
  phone VARCHAR2(50 BYTE) NOT NULL,
  hire_date DATE NOT NULL,
  manager_id NUMBER(12),
  job_title VARCHAR2(255 BYTE) NOT NULL,
  PRIMARY KEY (employee_id),
  CONSTRAINT fk_employees_manager FOREIGN KEY (manager_id) REFERENCES "CAATDemo".employees (employee_id) ON DELETE CASCADE
);