# What is this?

Multiple java webapps behind an nginx server, which can be started using a few docker components.

The scenario:  local development or local test, not for production

# Features (in acceptance criteria format)

## Non-developer
 
As a tester or a product owner, 

Given I've installed docker in my computer, and have downloaded this code repo to my computer, 
 
I can start this whole application in my computer with a meaningful domain name and port 80,

So that I can test the application right away without installing any other software

## Java developer

As a Java developer, 

Given I've installed docker in my computer, and have cloned this code repo to my computer,
 
I can start any number of java webapps, with or without the nginx server

so that I can,
 
* Access the started webapps using localhost urls with non-80 ports
* Access the started webapps using a a meaningful domain name and port 80, if the nginx server is alo started up
* Debug the started webapps from my IDE, such as Eclipse or Intellij
* If I make code change to any of the started apps, there is a way for me sync the change to the app, without having to restart other apps or nginx server
* Start more webapps or stop one of the started webapps 

# Run




# How is it built? 