<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    
    <style>
        /* CSS Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1 {
            color: #333;
        }

        .form1 {
            margin-bottom: 20px;
        }

        .button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }

        .section {
            margin-bottom: 30px;
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
        }

        .red-text {
            color: red;
        }
    </style>
</head>
<body>

<div class="section">
    <h1>Welcome to the Admin page</h1>

    <h1 class="red-text">${msg}</h1>

    <h1>You Can Acess Student Data</h1>
</div>

<%if(session.getAttribute("admin")==null){%>

    <form action="/login" method="post" class="form1">
        <div class="section">
            <label for="username">UserName:</label>
            <input type="text" id="username" name="username"><br><br>

            <label for="password">Password :  </label>
            <input type="password" id="password" name="password"><br><br>

            <button type="reset" class="button">Clear</button>
            <button type="submit" class="button">Submit</button>
        </div>
    </form>

<% }else{%>

    <div class="section">
        <h1>Click Here To Enter: <a href="/fetchall"><button class="button">Fetch All</button></a></h1>
    </div>

    <div class="section">
        <h1>Find By Id</h1>
        <form action="/findbyid" class="form1" method="get">
            <label for="id">Fetch By Id</label>
            <input type="number" id="id" name="id"><br>

            <button type="reset" class="button">Clear</button>
            <button type="submit" class="button">Submit</button>
        </form>
    </div>

    <div class="section">
        <h1>Find By Result</h1>
        <form action="/findbyresult" class="form1" method="get">
            <label for="id">Fetch By Result</label>
            <input type="text" id="id" name="result"><br>

            <button type="reset" class="button">Clear</button>
            <button type="submit" class="button">Submit</button>
        </form>
    </div>

    <div class="section">
        <a href="/logout"><button class="button">Logout</button></a>
    </div>

<%} %>

<div class="section">
    <a href="index.html"><button class="button">Home</button></a>
</div>

</body>
</html>
