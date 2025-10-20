<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%--
    자바 스크립트 => 연산자
   1) 단항연산자
      = 증감 연산자 (++, --)
      = 부정 연산자 (!)
      = 형변환
        => 숫자 변환 => Number("10"), parseInt("10")
                      | => 결제 통계
                      
        => 문자열 변환 => String(10) => "10"
        => 논리형 변환
    2) 이항연산자
       - 산술연산자 : + - * / %
                   -     - -- 나머지 => 왼쪽편 부호
                         | 5/2 : 정수 / 정숫 = 실수
                         | 0으로 나누면 오류 발생(Infinity)
                           NaN => 연산처리가 안되는 경우
                  덧셈 / 문자열 결합
       - 비교연산자
         ==(===), !=(!==), <, >, <=, >=,
          | 결과값은 boolean (true/false)
       - 논리연산자
         &&, ||
             --병렬(둘중 하나만 true면 true)
             | 범위, 기간이 벗어나는 경우
         --- 직렬(양쪽 조건이 모두 true인 경우만 true)
             | 범위, 기간안에 포함
       - 대입연산자 : =, +=, -=
       
    3) 삼항연산자 : 조건?값1:값2
                 true => 값1
                 false => 값2
                 => if~else
   --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavaScript 연산자 예제</title>
<script type="text/javascript">
/*function calc()
{
    // 1. 입력값 가져오기
   let a = document.getElementById("first").value;
   let b = document.getElementById("second").value;

   // 2. 문자열을 숫자로 변환
   a = Number(a);
   b = Number(b);

   // 3. 계산
   let c = a + b;

   // 4. 콘솔창에 출력
   console.log("첫 번째 값:", a);
   console.log("두 번째 값:", b);
   console.log("결과 =", c); 
}*/
window.onload=function(){
	let a=Boolean(1);
	let b=Boolean(0) // false
	let c=Boolean(0.0) // false
	let e=Boolean('JavaScript')
	let f=Boolean('')
	let k=Boolean("")
	
	let m="a="+a+"<br>"
	     +"b="+b+"<br>"
	     +"c="+c+"<br>"
	     +"e="+e+"<br>"
	     +"f="+f+"<br>"
	     +"k="+k+"<br>"
	 document.write(m)
	 document.write((5/0)+"<br>")
	 document.write("10"*5+"<br>")
	 document.write(5/2+"<br>")
	 document.write(("10"==10)+"<br>")
	 document.write(("10"===10)+"<br>")
	 // 기준 => 데이터형 => 권장
}
</script>
</head>
<body>
<!--  첫 번째 값: <input type="text" id="first" size="10"><br>
 두 번째 값: <input type="text" id="second" size="10"><br>
 <input type="button" value="계산" onclick="calc()"><br> -->
</body>
</html>
