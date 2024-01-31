import sys
args = sys.argv[1:]
for i in args:
    #\n default, end=' ' 넣으면 줄바꿈 없앰
    print(i.upper(), end=' ') 