# What is this?

A react frontend and a java backend behind an nginx server, which can be started using a few docker commands.

The scenario:  local development or local test, not for production

# Features (in acceptance criteria format)

## Non-developer
 
As a tester or a product owner, 

Given I've installed docker in my computer, and have downloaded this code repo to my computer, 
 
I can start this whole application in my computer and access it with port 80,

So that I can test the application right away without installing any other software

## Developer

As a developer, 

Given I've installed docker in my computer, and have cloned this code repo to my computer,
 
I can start this whole application in my computer and access it with port 80,

And

### If I am a backend developer
 
* I can debug the backend from my IDE, such as Eclipse or Intellij
* If I change the code in backend, there is a way for me push the change into running

### If I am a frontend developer
* If I change any javascript code, I can see update in the website 
* I can force the above to happen if it sometimes doesn't 
* If I change package.json, there is a way to clean up node_modules, rebuild the frontend and rerun the frontend


# Run




# How is it built? 