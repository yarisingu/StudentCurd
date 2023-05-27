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
			List<Student> list = (List<Student>) request.getAttribute("list1");
			for (Student course : list) {
			%>
				<tr>
					<th><%=course.getId() %></th>
					<th><%=course.getFullName() %></th>
					<th><%=course.getDob() %></th>
					<th><%=course.getGender() %></th>
					<th><%=course.getNationality() %></th>
					<th><%=course.getAddress() %></th>
					<th><%=course.getCity() %></th>
					<th><%=course.getState() %></th>
					<th><%=course.getZip() %></th>
					<th><%=course.getPhone() %></th>
					<th><%=course.getSchool() %></th>
					<th><%=course.getMajor() %></th>
					<th><%=course.getStudentId() %></th>
					<th><%=course.getGpa() %></th>
					<th><%=course.getResult() %></th>
					<th><a href="delete?id=<%=course.getId() %>"><button>Delete</button></a></th>	
				</tr>
			<%
			}
			%>


</table>

</body>
</html>