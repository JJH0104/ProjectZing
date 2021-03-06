<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="s"%>    
<html>
<head>
<meta charset="UTF-8">
<title>징검다리 : Logout</title>
</head>
<body>
<div class="wrapped">
<h1>로그아웃</h1>
<!-- => 스프링 시큐리티로 로그아웃을 전달하려면
   form Tag , Post 로 전달해야함.
=> 그러므로 a Tag 요청은 컨트롤러로 넘어가 404 발생    -->
<p>로그아웃 하시겠습니까?</p>
<form action="${pageContext.request.contextPath}/logout" method='post'>
	<button>로그아웃</button>
	<%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
		=> security JSTL 사용하면 다음 1줄로 가능함 --%>
	<s:csrfInput />
</form>
<!-- => form Tag 내에서 버튼Tag 는 inputTag type submit 과 동일하게 작동.
=> 로그아웃은 스프링 시큐리티 내부에서 처리되고 성공시 로그인 창이 뜬다.
=> 별도의 작업을 하려면 logoutSuccessHandler 를 정의해서 처리함. -->
</div>
</body>
</html>
