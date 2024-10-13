<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculate Factorial</title>
</head>
<body>
	<%!
		int number;
		int result;
		public int factorial(int n) {
			if(n == 0 || n == 1) return 1;
			else return (n * factorial(n - 1));
		}
	%>
	
	<%
		String input = request.getParameter("number");
		number = Integer.parseInt(input);
		result = factorial(number);
	%>
	
	<p> The factorial of <%=number%> is <%=result%> </p>
</body>
</html>