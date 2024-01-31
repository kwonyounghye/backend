from django.contrib import admin
from django.urls import path, include
from config import views
from django.conf import settings
from django.urls import re_path

urlpatterns = [
    #관리자용 사이트
    path('admin/', admin.site.urls),
    path('', views.home),
    path('address/', include('address.urls')),
    path('memo/', include('memo.urls')),
    path('survey/', include('survey.urls')),
    path('guestbook/', include('guestbook.urls')),
    path('member/', include('member.urls')),
    path('shop/', include(('shop.urls'))),
]

if settings.DEBUG:
    import debug_toolbar
            # 기존 것에 추가
    urlpatterns += [
        re_path(r'^__debug__/', include(debug_toolbar.urls)),
    ]
