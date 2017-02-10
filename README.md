# Sinatra Boiler Plate

## Summary
This Sinatra boiler plate is made to make it easier for you to get your app started quicker. I have included a couple of pre-configured settings to make getting your app off the ground a little easier. Make sure to delete the git and reinitialize the git file if you plan on using git workflow. Add an required gems for your project to the gem file folder. You may need to delete the Gem.lock file.

##Instructions
To setup the app run the following commands.
`bundle install'
'bundle exec rake db:drop'
'bundle exec rake db:create'
Now you will need to build out your models and migration files
'bundle exec rake generate:model NAME=your_model_name_here'
'bundle exec rake generate:migration NAME=migration_name_here'
If you have a seed configured you can now run the following command
'bundle exec rake db:seed'
Assuming you have no errors you can now run
'bundle exec shotgun'
The default port should be 9393. Go to your web browser and check to see if your app is running at http://localhost:9393/
Now you are on your way to making your first Sinatra app.
The following is some helpful guides to using Sinatra.

[CRUD][wikipedia crud] stands for create, read, update, and delete.  These are the basic behaviors for persisting data.  We insert new records into the database, read them from the database, update their values, and delete them from the database.  In order to trigger these behaviors in a web application, we need to make requests to specific routes: a route for inserting data into the database, a route for getting all the records from the database, a route for updating a record, etc.

Imagine a dog adoption application with a `Dog` model. If a user wants to list a new dog for adoption, the user needs to navigate to the page with the form for providing information about the dog. Let's say that to get to the page with the form, the user clicks a "List Dog" link. Following convention, clicking that link should trigger a GET request to the path `/dogs/new`.  The response to that request would return the page with the form.  When the user completes the form and clicks the submit button, this should conventionally trigger a POST request to the path `/dogs`.  And there are conventions for the other behaviors as well (see Table 1).

These conventions are part of an approach to structuring an application known as [REST][wikipedia rest] (representational state transfer).  In this challenge we are going to refactor a working application whose developer did not follow REST-ful routing conventions.  We're going to update the application to follow routing conventions.

| Description                        | Behavior | Request Type | Request Path     |
|------------------------------------|----------|--------------|------------------|
| Insert a dog record                | Create   | POST         | `/dogs`          |
| Select all dogs records            | Read     | GET          | `/dogs`          |
| Select one dog record              | Read     | GET          | `/dogs/:id`      |
| Form for creating a new dog record | Read     | GET          | `/dogs/new`      |
| Form for editing a dog record      | Read     | GET          | `/dogs/:id/edit` |
| Update a dog record                | Update   | PUT          | `/dogs/:id`      |
| Delete a dog record                | Delete   | DELETE       | `/dogs/:id`      |
*Table 1*.  Conventional request types and paths for CRUD behaviors (based on [table][railsguides routes table] in RailsGuides).




