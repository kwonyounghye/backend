from flask import Flask, render_template, request
from keras.models import load_model
import numpy as np

app=Flask(__name__)

@app.route('/iris', methods=['GET'])
def main():
    return render_template('iris/input.html')

@app.route('/iris_result', methods=['POST'])
def iris_result():
    flowers = ['setosa', 'versicolor', 'virginica']
    # 기계학습 모형이 저장된 디렉토리
    model = load_model('c:/data/iris')
    a = float(request.form['a']) # 폼데이터
    b = float(request.form['b'])
    c = float(request.form['c'])
    d = float(request.form['d'])
    test_set = [[a, b, c, d]] # 2차원 배열로 바꾸고
    # predict - 2차원 배열로 만들어야 함
    pred = model.predict(test_set) # 모델에 입력하여 결과 출력
    n = np.argmax(pred, axis=1) # 최대값의 인덱스 계산
    result = flowers[n[0]] # 품종 이름
    # 출력 페이지로 이동
    return render_template('iris/iris_result.html', result=result, a=a, b=b, c=c, d=d)

if __name__=='__main__':
    # 플라스크 앱 실행
    # 웹브라우저에서 실행할 때 http://lacalhost:8000으로 하면 속도가 매우 느려지므로 httpL//127.0.0.1:8000으로 실행
    app.run(port=8000, threaded=False)
