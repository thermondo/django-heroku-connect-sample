from django.db import models
from heroku_connect import models as hc_models


class User(hc_models.HerokuConnectModel):
    sf_object_name = 'User'

    username = hc_models.Text(
        sf_field_name='Username', max_length=80)
    email = hc_models.Email(sf_field_name='Email')
    department = hc_models.Text(
        sf_field_name='Department', max_length=80)
    title = hc_models.Text(sf_field_name='Title', max_length=80)


class UserComment(models.Model):
    user = models.ForeignKey(User, to_field='sf_id',
                             on_delete=models.SET_NULL, null=True)
    comment = models.TextField()
