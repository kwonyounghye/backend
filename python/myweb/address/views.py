from django.shortcuts import redirect, render
from address.models import Address


def home(request):
    #모든 레코드 선택, name 오름차순 정렬
    items = Address.objects.order_by("name")
    #list.html 템플릿으로부터 완성된 html 생성
    return render(request, 'address/list.html',
                  #{'보내주는 변수명':데이터}
                  {'items': items, 'address_count': len(items)})


def write(request):
    return render(request, 'address/write.html')


def insert(request):
    #POST['변수'] post 방식으로 전달된 값
    #GET['변수'] get 방식으로 전달된 값
    addr = Address(name=request.POST['name'], tel=request.POST['tel'], email=request.POST['email'],
                   address=request.POST['address'])
    addr.save() #레코드가 저장됨
    return redirect('/address') #http://localhost/address로 리다이렉트


def detail(request):
    id = request.GET['idx'] #레코드 번호
    addr = Address.objects.get(idx=id) #번호에 해당하는 레코드 선택
    return render(request, 'address/detail.html', {'addr': addr})

def update(request):
    id=request.POST['idx']
    addr=Address(idx=id, name=request.POST['name'], tel=request.POST['tel'], email=request.POST['email'], address=request.POST['address'])
    addr.save()
    return redirect('/address')


def delete(request):
    id = request.POST['idx']
    Address.objects.get(idx=id).delete()
    return redirect('/address')

# Create your views here.
