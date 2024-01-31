#실행: Alt+Shift+F10
#__로 시작하는 멤버를 제외하고 import
#from ~import
#common 패키지의 mod1 모듈의 모든 함수

from common.mod1 import *
gugu(9)
#common 패키지의 mod2 모듈
from common import mod2
a=mod2.mysum(100)
print(a)
#common 패키지의 mod2 모듈의 mysum 함수
from common.mod2 import mysum
b=mysum(200)
print(b)