from datetime import datetime
from django.db import models

class Memo(models.Model):
    idx=models.AutoField(primary_key=True) # 글번호, 자동증가일련번호, pk
    writer=models.TextField(null=False) #텍스트 필드
    memo=models.TextField(null=False)
    # 날짜, 기본값-현재시각
    post_date=models.DateTimeField(default=datetime.now, blank=True)