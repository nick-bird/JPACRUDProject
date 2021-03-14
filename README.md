# JPACRUDProject

## Project Description
This project is meant to keep track of information for someone who is in the process of shopping for a guitar. This website allows a user to keep notes and records of the different guitars they are considering and comparing. The user is greeted with a home page, which has links to either add a new guitar record, or to view all existing records. They can add information such as manufacturer and price, and add notes and ratings, for if the user is able to test out and play the guitar in person. When viewing existing records, the user has the option to update or delete a record, or return to the home page.

## Technologies Used
For this project I started by using MySQL Workbench to create a new database for storing instances of my entity class. Using JPA/Hibernate persistence provider, the MySQL table is mapped to my entity class and this mapping is tested via JUnit5. Using Gradle for dependency management, this JPA backend is integrated with Spring Boot MVC. A DAO implementation contains methods to interface with the database and perform all CRUD operations. A Controller class calls these methods, and provides request mappings used in the JSP views. 
