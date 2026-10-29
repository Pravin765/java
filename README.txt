AJT PRACTICALS - HOW TO USE   (built for MySQL 5.5 + NetBeans)
=============================================================
1. Open Command Prompt (any folder). Open a .txt file from this folder in Notepad, Ctrl+A, Ctrl+C,
   then right-click in Command Prompt to paste. Do NOT save it as .bat (the % signs would break).
   Practical 9B is in 4 parts: paste part1, wait for the prompt, then part2, part3, part4.
2. Projects are created in Desktop\AJT_Practicals\<project name>   (OneDrive Desktop detected automatically).
3. NetBeans: File > Open Project > pick the project folder > right-click > Run.
4. DB practicals (1C, 4C, 5A, 7B, 9B): run the SQL first. Either run database_setup.sql, or copy the
   queries from the comment at the top of the project's Java/JSP file (marked "DATABASE SETUP").
   Command:  mysql -u root -p      then paste the queries at the mysql> prompt.

MYSQL 5.5 NOTES
  - Projects use MySQL Connector/J 5.1.49 (Connector/J 8 does not support MySQL 5.5)
  - Driver class: com.mysql.jdbc.Driver ; Hibernate dialect: MySQL55Dialect
  - Connection strings are hard coded:  jdbc:mysql://localhost:3306/<database>   user root / password system
    Change the password in the file if yours is different.

WHICH SERVER
  Practicals 1-5, 8B, 9A, 9B  Tomcat 9 or GlassFish 5 / Payara 5   (javax.* packages: NOT Tomcat 10+, GlassFish 6+, Payara 6)
  Practicals 6, 7 (EJB)       GlassFish 5 / Payara 5 ONLY (Tomcat cannot run EJBs)
  Practical 8A                no server - plain Java app, right-click project > Run

FILES
  01 1A calculator        10 4A implicit objects     19 7B marks entry (DB)
  02 1B login             11 4B JSP validation       20 8A Hibernate employee (DB)
  03 1C registration (DB) 12 4C JSP register (DB)    21 8B Hibernate feedback (DB)
  04 2A dispatcher        13 5A employee update (DB) 22 9A JPA guestbook (DB)
  05 2B cookies           14 5B expression language  23 9B student feedback (DB, 4 parts)
  06 2C session           15 5C JSTL
  07 3A upload            16 6A currency (EJB)
  08 3A download          17 6B room reservation (EJB)
  09 3B question/answer   18 7A hit count (EJB)

WHERE THE SQL COMMENTS ARE
  1C register.java | 4C Register.jsp | 5A Update.jsp | 7B ejb/MarksEntry.java | 9B com/studentfeedback/DBConnection.java
  8A, 8B  src/main/resources/hibernate.cfg.xml | 9A src/main/resources/META-INF/persistence.xml

QUICK TESTS
  1B  user TYIT / password 132 -> "HELLO TYIT ... logged in";  anything else -> "Login Failed"
  2A  password "Servlet" -> "Hello <name> You are Welcome here."; else "Password is invalid"
  2B  click the button, then refresh 2-3 times -> "You visited N times"
  2C  submit once -> "Welcome First Time"; go back and press Submit again -> "Welcome Again"
  3A  upload saves to D:\ ; download needs a file D:\Practical6.txt (change the drive in the .java if no D:)
  3B  answers int, app, jdbc, mic -> "You are Pass"
  6A  100 rupees -> 1.19 dollars (rate 83.99)
  7A  refresh the page: the counter goes 0,1,2,...

CHANGES MADE TO THE PDF CODE (so that it compiles / runs)
  All servlets      @WebServlet("/name") added (the PDF relied on NetBeans-generated web.xml mappings)
  2A                Demo/welcome extended HttpServlet but used ServletRequest/Response and no http import -> fixed
  2C                visit counter was stored as Integer but read as String (crash on 3rd visit) -> stored as String
  3B / 4B           null-safe comparisons so an empty form does not crash
  5A                SQL string was split across two lines -> joined
  7B                database name had a space ("/ marksdb1") -> removed
  8A                mapping file is emp.hbm.xml (PDF named it Emp2 but referenced emp.hbm.xml); added a retrieve step
  8A/8B             DB changed from "mysql" on port 3307 to "hibernatedb" on 3306 (auto-created); hibernate.cfg.xml
                    (PDF said Hybernet.cfg.xml); DTD URLs use www.hibernate.org
  8B                Store.jsp was missing in the PDF - written for you
  9A                persistence.xml was missing in the PDF - written for you (Hibernate JPA provider, DB guestbookdb)
  Passwords         PDF has "system" (and "hassan11" in 8B): all set to "system" - change to YOUR MySQL root password
  Dependencies      pom.xml of every project lists what it needs; first open in NetBeans needs internet
