from django import forms
from django.contrib.auth.models import User
# Create your models here.

class UserForm(forms.ModelForm):
    class Meta:
        model = User
        fields=['username', 'email', 'password']

class LoginForm(forms.ModelForm):
    class Meta:
        model=User
        fields=['username', 'password']
