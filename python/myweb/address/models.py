from django.db import models

# Create your models here.
#테이블의 모델 클래스
class Address(models.Model):
    #자동증가 일련번호
    idx=models.AutoField(primary_key=True)
    #CharField: varchar/blank 빈문자열/null 여부
    name=models.CharField(max_length=50, blank=True, null=True)
    tel=models.CharField(max_length=50, blank=True, null=True)
    email=models.CharField(max_length=50, blank=True, null=True)
    address=models.CharField(max_length=500, blank=True, null=True)