<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<div th:each="post:${feed}">
			<b th:text="${post.from.name}">from</b> wrote:
			<p th:text="${post.message}">message text</p>
			<img th:if="${post.picture}" th:src="${post.picture}"/>
			<hr/>
		</div>
		<c:forEach var="o" items="${feed}">
		Post by:<c:out value="${o.from.name}"/>
		<img src="<c:out value="${o.picture}"/>" alt="${o.message}"/>
		<hr/>
		</c:forEach>
</body>
</html>
