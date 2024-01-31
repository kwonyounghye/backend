from flask import Flask, render_template, request
import joblib
# 플라스크 앱 생성
app = Flask(__name__)
# 시작페이지
@app.route('/', methods = ['GET'])
def main():
    return render_template('iris/input.html')
# 입력데이터를 모형에 전달하여 분류
@app.route('/iris_result', methods = ['POST'])
def iris_result():
    flowers = ['setosa', 'versicolor', 'virginica']
    model = joblib.load('c:/data/iris/iris_logit.model') # 모형로드
    a = float(request.form['a'])
    b = float(request.form['b'])
    c = float(request.form['c'])
    d = float(request.form['d'])
    test_set = [[a, b, c, d]] # 2차원 배열로 반들고
    n = model.predict(test_set) # 모형에 입력
    result = flowers[n[0]] # 품종 판별
    return render_template('iris/result.html', result = result, a=a, b=b, c=c, d=d)

if __name__ == '__main__':
    app.run(port=8000, threaded=False)
