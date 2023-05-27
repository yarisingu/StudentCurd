<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student</title>
<style>
body {
  background-color: #f1f1f1;
  font-family: Arial, sans-serif;
  color: #333;
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
}

.container {
  max-width: 700px;
  padding: 40px;
  background-color: #ffffff;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  transition: transform 0.3s ease;
}

.container:hover {
  transform: scale(1.05);
}

h1 {
  color: #555;
  margin-top: 0;
  text-align: center;
}

.button {
  display: inline-block;
  padding: 10px 20px;
  font-size: 16px;
  background-color: #4CAF50;
  color: #fff;
  text-decoration: none;
  border-radius: 4px;
  transition: background-color 0.3s ease;
  margin-top: 10px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
}

.button:hover {
  background-color: #45a049;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.form-container {
  margin-top: 20px;
}

label {
  font-weight: bold;
}

input[type="number"] {
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 4px;
  width: 100%;
  box-sizing: border-box;
}

hr {
  margin-top: 20px;
  border: none;
  border-top: 1px solid #ccc;
}
</style>

</head>
<body>
<div class="container">
  <h1>Click To Enter Your Data</h1>
  ${msg}
  <a href="StudentData.jsp" class="button">Add Data</a><br>
  
  <hr>
  
  <h1>Enter The Id to Update</h1>
  <div class="form-container">
    <form action="/transfer" method="post">
      <label for="findbyid">Give Your ID</label>
      <input type="number" id="username=" name="id" pattern="[0-9]{1,6}" placeholder="Enter Your ID" maxlength="0-6" ><br>
      <button type="reset" class="button">Clear</button>
      <button type="submit" class="button">Submit</button>
    </form>
    <a href="index.html" class="button">Home</a><br>
  </div>
</div>
</body>
</html>
