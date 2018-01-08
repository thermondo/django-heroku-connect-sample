# Django Heroku Connect Example

### How to Setup

### Before you start

Make sure you have the Heroku CLI setup as well as the Heroku Connect plugin.

```shell
heroku plugins:install heroku-connect-plugin
```

You will also need a local copy of the repo on you development machine.

```shell
git clone https://github.com/Thermondo/django-heroku-connect-example-app.git
```

Last but not least you will obviously need a Salesforce sandbox.

### Deployment

First click the deploy button an create your own app.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/Thermondo/django-heroku-connect-example-app)

Next connect heroku connect to you newly created database.

```shell
heroku connect:db:set --schema salesforce --db DATABASE_URL -a <app_name>
```

You will now need to authenticate Heroku Connect with salesforce. If you don't
have a 

```shell
heroku connect:sf:auth -a <app_name>
```

Finally you need to import the Heroku Connect configuration.

```shell
heroku connect:import schema.json -a <app_name>
```

That's it, enjoy!
