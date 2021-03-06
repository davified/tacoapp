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

TODO: davidtan [2017-03-31]: Connect RDS instance to beanstalk application: https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.RDS.html?icmpid=docs_elasticbeanstalk_console

Note:
When running this on Elastic Beanstalk for the first time, you need to add the following to `.ebextensions/node-settings.config` before step_01 and step_03. The `initdb` command only needs to run once after installation of postgres:
```
02_init_postgres:
	command: "service postgresql initdb"

03_create_postgres_root_user:
  command: "sudo -u postgres createuser root"
```

```
container_commands:
  01_createdb:
    command: "sudo createdb tacos_development"

```

### Acknowledgements

This [codebase](https://github.com/WDI-SEA/tacoapp) is created by [General Assembly Seattle](https://github.com/WDI-SEA/).

TODO: davidtan [2017-03-28]: Figure out how to run `sequelize db:migrate` on Beanstalk instance
