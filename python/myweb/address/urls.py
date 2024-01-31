# 내장합수 url import
from address import views
from django.urls import path

# url과 함수를 매핑하는 코드
urlpatterns = [
    path('', views.home),
    path('write', views.write),
    path('insert', views.insert),
    path('detail', views.detail),
    path('update', views.update),
    path('delete', views.delete)
]
