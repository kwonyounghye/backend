def gugu(a):
    for i in range(1, 10):
        print(f'{a}x{i}={a*i}')

print(__name__)
if __name__ == '__main__':
    gugu(5)