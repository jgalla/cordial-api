# Cordial
Cordial is a web application that lets users select ingredients and view
cocktails that can be made with those ingredients.

### Links
* [GitHub Client Repository](https://github.com/jgalla/cordial-client)
* [GitHub API Repository](https://github.com/jgalla/cordial-api)
* [Deployed Client](https://jgalla.github.io/cordial-client/)
* [Deployed API](https://cordial-api.herokuapp.com)

### Setup and Installation
1. Fork and Clone this repository.
2. Change into the new directory.
3. Install dependencies with `bundle install`.
4. Create and checkout a new `development` branch.
5. Create a `.env` for sensitive settings (`touch .env`).
6. Generate new `development` and `test` secrets (`bundle exec rails secret`).
7. Store them in `.env` with keys `SECRET_KEY_BASE_<DEVELOPMENT|TEST>` respectively.
8. Run the API server with `bin/rails server` or `bundle exec rails server`.
6. Note that client must be [setup and run](https://github.com/jgalla/cordial-client#setup-and-installation)
  for application to function on localhost.

### Technologies Used
* Ruby
* Rails
* Heroku
* PostgreSQL
* Git
* GitHub

### Development Process
* Create wireframes and ERD
* Layout Back-end
  - Create GitHub repository for API
  - Create API template
  - Commit to GitHub and deply to Heroku
* Layout Front-end
  - Create GitHub repository
  - Create browser template
  - Commit to GitHub
* Setup Back-end
  - Set up schema and test
  - Setup database table relationships
  - Deploy to Heroku
* Setup Front-end
  - Create basic front-end components for resources and test in browser
  - Build-out fully featured components
* Testing
  - Component testing and end-to-end user testing
* Styling
  - Focus on displaying information to meet MVP

### ERD
![ERD](https://i.imgur.com/GcYRH1z.jpg)

### API Routes
* User
  - /sign-up (POST)
  - /sign-in (POST)
  - /change-password (PATCH)
  - /sign-out (DELETE)
* Ingredients
  - /ingredients (GET)
  - /ingredients (POST)
  - /ingredients/:id (PATCH)
  - /ingredienrs/:id (DELETE)

### Unsolved Problems and Future Work
* Users can create ingredients, but they cannot create recipes.
* Basic functions should be availble for unregistered users.
