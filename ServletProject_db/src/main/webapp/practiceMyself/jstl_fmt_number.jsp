<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<p>
		type="number"/세자리에 마다 콤마로 구분해준다. 
		<br>
		1010101 ==> <fmt:formatNumber value="1010101" type="number" />
	</p>
	<p>
		type="currency" currencySymbol="$"/$단위의 화폐심볼을 사용할 수 있다. 
		<br>
		1000 ==> <fmt:formatNumber value="1000" type="currency" currencySymbol="$" />
	</p>
	<p>
		type="percent"/%로 표현한다. 
		<br>
		0.5 ==> <fmt:formatNumber value="0.5" type="percent"/>
	</p>
	<p>
		pattern="0"/ 0의 자리에서 반올림
		<br>
		2412.1515 ==> <fmt:formatNumber value="2412.1515" pattern="0" />
	</p>
	<p>
		pattern=".0"/ 소수점 첫째 자리에서 반올림
		<br>
		2412.1515 ==> <fmt:formatNumber value="2412.1515" pattern=".0" />
	</p>
	<p>
		pattern=".00"/ 소수점 둘째 자리에서 반올림
		<br>
		2412.1515 ==> <fmt:formatNumber value="2412.1515" pattern=".00" />
	</p>
	<p>
		pattern=".000"/ 소수점 셋째 자리에서 반올림
		<br>
		2412.1515 ==> <fmt:formatNumber value="2412.1515" pattern=".000" />
	</p>
	<p>
		pattern=".0000"/ 소수점 넷째 자리에서 반올림
		<br>
		2412.1515 ==> <fmt:formatNumber value="2412.1515" pattern=".0000" />
	</p>
</body>
</html>