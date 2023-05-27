<%@page import="com.tarun.Student.dto.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1>${msg}</h1>
<h1>Students Details are </h1>
<br>

<%  %>
<table border="1">
<tr>
<th>ID</th>
<th>NAME</th>
<th>DOB</th>
<th>GENDER</th>
<th>NATIONALITY</th>
<th>ADDRESS</th>
<th>CITY</th>
<th>STATE</th>
<th>ZIP</th>
<th>PHONE</th>
<th>SCHOOL</th>
<th>MAJOR</th>
<th>STUDENTID</th>
<th>GPA</th>
<th>Result</th>
<th>Delete</th>
</tr>
			
			<%
				Student list = (Student) request.getAttribute("dto");
			%>
			<tr>
					<th><%=list.getId() %></th>
					<th><%=list.getFullName() %></th>
					<th><%=list.getDob() %></th>
					<th><%=list.getGender() %></th>
					<th><%=list.getNationality() %></th>
					<th><%=list.getAddress() %></th>
					<th><%=list.getCity() %></th>
					<th><%=list.getState() %></th>
					<th><%=list.getZip() %></th>
					<th><%=list.getPhone() %></th>
					<th><%=list.getSchool() %></th>
					<th><%=list.getMajor() %></th>
					<th><%=list.getStudentId() %></th>
					<th><%=list.getGpa() %></th>
					<th><%=list.getResult() %></th>
					<th><a href="delete?id=<%=list.getId() %>"><button>Delete</button></a></th>	
			</tr>
			<%
			%>


</table>
</body>
</html>