from django.urls import path
from survey import views
urlpatterns = [
    #설문 조사 관련 url
    path('', views.main),
    path('save_survey', views.save_survey),
    path('show_result', views.show_result),
]