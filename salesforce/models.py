from heroku_connect.db import models as hc_models


class User(hc_models.HerokuConnectModel):
    sf_object_name = 'User'

    username = hc_models.Text(
        sf_field_name='Username', max_length=80)
    email = hc_models.Email(sf_field_name='Email')
    department = hc_models.Text(
        sf_field_name='Department', max_length=80)
    title = hc_models.Text(sf_field_name='Title', max_length=80)

    def __str__(self):
        return self.username


class Test(hc_models.HerokuConnectModel):
    sf_object_name = 'Test__c'

    auto_number = hc_models.Number(sf_field_name='Name', max_digits=18, decimal_places=0)
    checkbox = hc_models.Checkbox(sf_field_name='Checkbox__c')
    currency = hc_models.Currency(sf_field_name='Currency__c', max_digits=16, decimal_places=2)
    date = hc_models.Date(sf_field_name='Date__c')
    datetime = hc_models.DateTime(sf_field_name='Date_Time__c')
    email = hc_models.Email(sf_field_name='Email__c')
    number = hc_models.Number(sf_field_name='Number__c', max_digits=9, decimal_places=3)
    percent = hc_models.Percent(sf_field_name='Percent__c', max_digits=16, decimal_places=2)
    phone = hc_models.Phone(sf_field_name='Phone__c')
    picklist = hc_models.Picklist(sf_field_name='Picklist__c',
                                  choices=(('a', 'a'), ('b', 'b'), ('c', 'c'), ))
    text = hc_models.Text(sf_field_name='Test__c', max_length=255)
    text_area = hc_models.TextArea(sf_field_name='Test_Area__c')
    time = hc_models.Time(sf_field_name='Time__c')
    url = hc_models.URL(sf_field_name='URL__c')
