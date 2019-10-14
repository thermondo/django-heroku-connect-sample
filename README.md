# Django Heroku Connect Example

### How to Setup

### Before you start

Make sure you have the Heroku CLI setup as well as the Heroku Connect plugin.

```shell
heroku plugins:install heroku-connect-plugin
```

You will also need a local copy of the repo on you development machine.

```shell
git clone https://github.com/Thermondo/django-heroku-connect-sample.git
```

Last but not least you will obviously need a Salesforce sandbox.

### Deployment

First click the deploy button an create your own app.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/Thermondo/django-heroku-connect-sample)

Wait until the app is deployed, this should only take a couple seconds.

Set name of your newly created app to your environment to make things simpler:

```bash
export HEROKU_APP_NAME=app_name  # please replace with your app name
```

#### Configuring Salesforce connection

You can configure a Salesforce connection using the UI:

```bash
heroku addons:open herokuconnect -a "$HEROKU_APP_NAME"
```

It will open the Heroku Connect page. Click on Setup and Next, Next, Next.

From the command line, run the following command and follow the instructions.
You will be prompted to login to your Salesforce sandbox. 

```bash
heroku connect:info -a "$HEROKU_APP_NAME"
heroku connect:db:set --schema salesforce --db DATABASE_URL -a "$HEROKU_APP_NAME"
heroku connect:sf:auth -a "$HEROKU_APP_NAME"
sleep 3  # give heroku connect a second to connect
```

#### Importing Django Heroku Connect schema

For both you should import the schema:

```
heroku connect:import schema.json -a "$HEROKU_APP_NAME"
```

That's it, enjoy!
