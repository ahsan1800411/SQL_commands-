
--  when working with postgres and we want to use enum we can use it as :

CREATE TYPE employeement_status as ENUM('employed','self-employed','unemployed');


CREATE TABLE users(
    full_name VARCHAR(255),
    yearly_salary INT,
    --current_status ENUM('employed','self-employed','unemployed') -- SQL syntax for using enum data types,

    -- PostgreSQL syntax:
    current_status employeement_status

)
