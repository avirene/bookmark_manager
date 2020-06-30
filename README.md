# Bookmark Manager Challenge

This repository provides a Bookmark Manager with the following user stories:

```
As a user
So that I can quickly access my favourite web pages
I would like to be able to view my bookmark list.
```

Functionality:

- a user is able to view their bookmarks.

Run "bundle" to install the gems (Sinatra, Capybara, Ruby, Rack).

![Bookmark Manager domain model](/Users/student/Downloads/Untitled_Diagram.drawio)

### To run the Bookmark Manager app:

```
rackup -p 3000
```

To view bookmarks, navigate to `localhost:3000/bookmarks`.

### To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To run tests:

```