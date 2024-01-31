from django.contrib import admin
from address.models import Address
# Register your models here.

class AddressAdmin(admin.ModelAdmin):

#화면에 출력할 필드 목록을 튜플로 지정/관리자 화면에 표시할 필드 지정
    list_display = ('name', 'tel', 'email', 'address')

#모델 클래스와 연결
admin.site.register(Address, AddressAdmin)