# What it is

**Problem** 
* My full stack code project is made up of backend (java) + frontend (react) + nginx (url routing between frontend/backend).   
* How do I start them up quickly without installing software or doing nasty configuration I am not interested in ? 
* As a developer, how do I re-start systems quickly after some code change is made ?   

 
**This sample provides an answer with docker**. You can run the systems **using or not using docker commands**, depending on your role.

**Disclaimer 1**:  the appropriate scenarios are **local development** and **local test**.  This solution is not for production.

**Disclaimer 2**:  It **may not work appropriately in some versions of MacOS or Linux**, due to some firewall configs in these OS

# How it solves the problem


## I'm a tester or a business stakeholder

### Constraints
* I don't want to install any dev software except Docker.  
* I can somehow get the code, but I don't change the code.


###  How I run the program
```bash
docker-compose up  #start all the systems
```

Then go to http://localhost 


## I'm a backend developer


### Constraints
* I don't know much about frontend and I don't want to install npm/nodejs  
* I change the backend code and after the change I need to quickly re-start the backend

### How I run the program

#### Start the frontend and nginx
```bash
# In one command window
docker-compose up frontend nginx 
```

####  Start the backend
```bash
# In another command window
cd backend 
mvn spring-boot:run -Dagentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000
```

Alternatively, I can start it with an IDE or any other feasible way in Java

Then check the backend: http://localhost:8080/api/foo

####  Finally visit the system 

Go to http://localhost 

#### Why don't I start up the backend using docker?

If I do that, for any code change I will have to re-build the whole image of backend, which takes long every time because maven dependencies will be downloaded every time.   


## I'm a frontend developer

### Constraints
* I don't know much about backend and I don't want to install JDK or Maven
* I change the frontend code and after the change create-react-app's hot-swap can reflect the change for me

### How I run the program

#### Start the backend and nginx
```bash
# In one command window
docker-compose up backend nginx 
```

#### Start the frontend
```bash
# In another command window
cd frontend 
npm start
```

#### Finally visit the system 

Go to http://localhost 

#### Why don't I start up the frontend using docker?

If I do that, for any code change I will have to re-build the whole image of frontend, which takes long every time because npm dependencies will be downloaded every time.   


## I'm a full-stack developer
You know what to do after reading the previous 2 chapters


# Appendix: How was this sample built? 

* Create the backend using spring boot (maven + spring web + war) 
* Create the frontend using create-react-app
* Everything else can be found in the the code