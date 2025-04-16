# dwr-struts-jndi-dbcp

## context.xml 
* tomcat(.smarttomcat) /conf/context.xml
    <!-- MySQL 데이터베이스 설정 -->
    <Resource name="jdbc/mydb"
              auth="Container"
              type="javax.sql.DataSource"
              driverClassName="com.mysql.cj.jdbc.Driver"
              url="jdbc:mysql://localhost:3306/kunnodae"
              username="root"
              password="1234"
              maxTotal="20"
              maxIdle="10"
              maxWaitMillis="-1" />
              
## -- kunnodae.test1234 definition

CREATE TABLE `test1234` (
  `id` varchar(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO kunnodae.test1234
(id, name)
VALUES('iamdid5678', 'Jang Kil-san');
INSERT INTO kunnodae.test1234
(id, name)
VALUES('iamid1234', 'Hong Kil-dong');
