# Taco app
A simple full-stack application built on express, ejs and sequelize.

### Getting setup locally
Pre-requisites:
1) You must have [Postgres](https://postgresapp.com/) installed
2) You must have Sequelize CLI installed (run `npm install -g sequelize-cli`) because this application

Starting the application:
1) `git clone https://github.com/davified/tacoapp`
2) `npm install`
3) `cd tacoapp`
4) `createdb tacos_development`
5) `sequelize db:migrate`
6) Go to `localhost:3000` or `localhost:3000/tacos` and create tacos!
