-- MySQL 5.5 compatible. Run ONCE from the command line:
--     mysql -u root -p < database_setup.sql
-- or open "mysql -u root -p" and paste the statements below.
-- The same statements are also written as comments inside each project's code.

-- Practical 1C  (servlet registration)  -> register.java
CREATE DATABASE IF NOT EXISTS register;
USE register;
CREATE TABLE IF NOT EXISTS register (
  username VARCHAR(50), password VARCHAR(50), email VARCHAR(80), country VARCHAR(50)
);

-- Practical 4C  (JSP registration)  -> Register.jsp
CREATE DATABASE IF NOT EXISTS Register1;
USE Register1;
CREATE TABLE IF NOT EXISTS user (
  username VARCHAR(50), password VARCHAR(50), email VARCHAR(80), country VARCHAR(50)
);

-- Practical 5A  (employee update)  -> Update.jsp
CREATE DATABASE IF NOT EXISTS emp1;
USE emp1;
CREATE TABLE IF NOT EXISTS tab (
  eno VARCHAR(10) PRIMARY KEY, ename VARCHAR(50), age VARCHAR(5), salary VARCHAR(15)
);
INSERT INTO tab VALUES ('1','Amit','25','30000');
INSERT INTO tab VALUES ('2','Sneha','28','40000');

-- Practical 7B  (marks entry EJB)  -> MarksEntry.java
CREATE DATABASE IF NOT EXISTS marksdb1;
USE marksdb1;
CREATE TABLE IF NOT EXISTS student (
  srno VARCHAR(10), sname VARCHAR(50), ej VARCHAR(5), awp VARCHAR(5)
);

-- Practical 9B  (student feedback)  -> DBConnection.java
CREATE DATABASE IF NOT EXISTS studentfeedback;
USE studentfeedback;
CREATE TABLE IF NOT EXISTS feedback (
  id INT AUTO_INCREMENT PRIMARY KEY,
  student_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  course VARCHAR(50) NOT NULL,
  rating INT NOT NULL,
  message TEXT,
  submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Practicals 8A, 8B, 9A need NO manual tables: Hibernate creates the tables itself and the
-- databases "hibernatedb" and "guestbookdb" are auto-created (createDatabaseIfNotExist=true).
-- Optional: CREATE DATABASE IF NOT EXISTS hibernatedb;  CREATE DATABASE IF NOT EXISTS guestbookdb;
