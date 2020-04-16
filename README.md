# README

Coder Academy afternoon Challenege.

Core:

Create a new rails app called 'toy_store', using postgresql as our db

Change into this directory and push our initial app to github

Create our database

Using rails generate migration - Create a table in our database, called 'Toy' that will hold:

A name - string

A description - text

A picture - text

A date the item was posted - date

A user - string (will just be someone's name that posted the toy)

Is that the only command we have to run? Nope. rails db:migrate

Oops, we haven't learnt images yet, so let's generate a new migration to solve this (Hint: Google 'rails 5 remove a column from database')

Remember to migrate these new changes!

Create the model to go with this table (Remember rails naming convention)

Jump into rails console, and have a play around, creating new toys and looking them up

Setup our seeds file, so that we can create 20 toys (may want to use faker to get interesting data)

Run the seeds file, so we have at least 20 toys

Advanced:

We now have our toys, but have no way to interact with them

Add in the necessary views / routes / controllers to make 'toy' a CRUD resource (Use postman for creating, deleting and updating)

Check that we are able to add new toys, and that they remain, even after restarting the server!

Yay! Our first complete MVC application

Push those changes up to github and do a little dance to celebrate how awesome you are!