
DROP TABLE users;
DROP TABLE employers;
DROP TABLE conversations;


-- PostgreSQL way of using ENUM
CREATE TYPE employer_status as ENUM('employed','unemployed','self-employed');

CREATE TABLE users(
    id SERIAL PRIMARY KEY, -- PostgreSQL way of using
  --id INT PRIMARY KEY AUTO_INCREMENT, --SQL way
  full_name VARCHAR(300) NOT NULL,
  yearly_salary INT CHECK (yearly_salary>0),
  --current_status ENUM('employed','unemployed','self-employed')  -- MYSQL way;
  current_status employer_status -- PostgreSQL way
);
CREATE TABLE employers(
   id SERIAL PRIMARY KEY, -- PostgreSQL way of using
  --id INT PRIMARY KEY AUTO_INCREMENT, --SQL way
  company_name VARCHAR(300) NOT NULL,
  company_address VARCHAR(300) NOT NULL,
  yearly_revenue INT CHECK (yearly_revenue>0),
  is_hiring BOOLEAN DEFAULT FALSE
);
CREATE TABLE conversations(
 id SERIAL PRIMARY KEY, -- PostgreSQL way of using
  --id INT PRIMARY KEY AUTO_INCREMENT, --SQL way
  user_id INT,
  employer_id INT,
  message TEXT NOT NULL,
  date_sent TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP

)



