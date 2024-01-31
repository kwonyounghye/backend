from django.db import models

# Create your models here.

#설문조사 문항
class Survey(models.Model):
    #설문 인덱스
    survey_idx = models.AutoField(primary_key=True)
    #문제
    question = models.TextField(null=False)
    #답1~4
    ans1 = models.TextField(null=True)
    ans2 = models.TextField(null=True)
    ans3 = models.TextField(null=True)
    ans4 = models.TextField(null=True)
    #설문 진행 상태(y=진행중, n=종료)
    status = models.CharField(max_length=1, default="y")

#설문 응답
class Answer(models.Model):
    #응답 아이디(자동 증가 필드)
    answer_idx = models.AutoField(primary_key = True)
    #설문아이디(Survey의 idx필드와 연결되는 Foreign key)
    survey_idx = models.IntegerField()
    #응답번호
    num = models.IntegerField()
