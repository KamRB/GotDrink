# Instrutions on Setting up Development Environment


#### First Think

> Hard Hard Hard

#### Project HomePage

Project Deploy URL <http://gotdrink-alpha.appspot.com/>


####  Requirement

Have these installed before starting:

1. Jdk 1.7
2. Apache Maven 3.2.
3. Eclipse Kepler


#### Steps

1. Clone the GIT repository to your local disk.
2. Go to the project folder and into the folder called "core"
3. Type "mvn clean install" to install the dependencies

#### Setting up Eclipse
1. Now you are ready to import it to Eclipse
2. Go to **File--> Import--> Existing Maven Projects**
3. Navigate to the repository and click import

#### Deployment

1. After the project is build successfully use "**mvn appengine:devserver**" to deploy locally
2. After testing locally "**mvn appengine:update**" to deploy to the Google Webservers


><b>Note: Always do the local deploy before pushing a deploy to Google Webservers making sure that the project does not have any Compiler and build errors!</b>


Requires [Apache Maven](http://maven.apache.org) 3.0 or greater, and JDK 6+ in order to run.

To build, run

    mvn package

Building will run the tests, but to explicitly run tests you can use the test target

    mvn test

To start the app, use the [App Engine Maven Plugin](http://code.google.com/p/appengine-maven-plugin/) that is already included in this demo.  Just run the command.

    mvn appengine:devserver

For further information, consult the [Java App Engine](https://developers.google.com/appengine/docs/java/overview) documentation.

To see all the available goals for the App Engine plugin, run

    mvn help:describe -Dplugin=appengine