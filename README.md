# J2EE-Applications
## Web - Applications using JAVA as Back-end
#### Programs 
* Servlets
* JSP (java server pages)
* Dealing with Database
* html forms
* user request and server response.
* etc.
## Requirements
* jdk 1.8.241
* tomcat 8.5
* mysql-connector-java-8.0.19.jar
    
##### Used Tomcat server to run these programs and mysql using XAMPP.

## Directory structure for war file
```
/MyServlet
    /css (if css files are there)
    /js (if js files are there)
    index.html
    /WEB-INF
        /classes
            all class files
            Myservlet.class
        /lib
            external library for app
            like for mysql mysqldriver.jar
        web.xml
```
Note : this direcotry structure is only needed when you need this like in servlets otherwise it can be uploaded without this directory structure in jsp programs if not needed other class files and web.xml(document descriptor) etc

## Some commands
* to create war file
    * jar -cvf Myservlet.war *
    
    
## Some important tips
* Declare all system variables to run these applications
    * JAVA_HOME (path of jdk folder)
    * JRE_HOME  (path of jre folder)
* Set class paths
    * path of the server-api.jar (available in tomcat lib folder) to compile servlet files
    * path of the jsp-api.jar (available in tomcat lib folder) to compile classes required in jsp
    
