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
6) `npm start`
7) Go to `localhost:3000` or `localhost:3000/tacos` and create tacos!

Note:
When running this on Elastic Beanstalk for the first time, you need to add the following to `.ebextensions/node-settings.config`:
```
02_init_postgres:
	command: "sudo service postgresql initdb"
```

### Acknowledgements

This [codebase](https://github.com/WDI-SEA/tacoapp) is created by [General Assembly Seattle](https://github.com/WDI-SEA/).

TODO: davidtan [2017-03-28]: Figure out how to run `sequelize db:migrate` on Beanstalk instance
