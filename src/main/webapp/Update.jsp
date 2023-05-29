<%@page import="com.tarun.Student.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Student Information Form</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f1f1f1;
      color: #333;
      display: flex;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
    }

    .container {
      max-width: 600px;
      width: 100%;
      padding: 40px;
      background-color: #ffffff;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      transition: transform 0.3s ease;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .container:hover {
      transform: scale(1.05);
    }

    h1 {
      text-align: center;
      margin-top: 0;
      margin-bottom: 20px;
    }

    p {
      text-align: center;
      margin-top: 0;
      margin-bottom: 20px;
    }

    form {
      width: 100%;
      max-width: 400px;
    }

    fieldset {
      margin-bottom: 20px;
      border: none;
    }

    legend {
      font-weight: bold;
      margin-bottom: 10px;
    }

    label {
      display: block;
      margin-bottom: 5px;
    }

    input[type="text"],
    input[type="email"],
    input[type="tel"],
    input[type="number"] {
      width: 100%;
      padding: 12px;
      font-size: 16px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    button[type="reset"],
    button[type="submit"],
    a button {
      display: inline-block;
      padding: 10px 20px;
      font-size: 16px;
      background-color: #4CAF50;
      color: #fff;
      text-decoration: none;
      border: none;
      border-radius: 4px;
      transition: background-color 0.3s ease;
      margin-top: 10px;
      margin-right: 10px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
    }

    button[type="reset"] {
      margin-right: auto;
    }

    a button {
      margin-top: 0;
    }

    button[type="reset"]:hover,
    button[type="submit"]:hover,
    a button:hover {
      background-color: #45a049;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>${msg}</h1>
    <h1>Student Information Form</h1>
    <%   Student  student =(Student) request.getAttribute("data"); %>
    <form action="/updates" method="post">
      <fieldset>
        <legend>Personal Information</legend>
        <label for="id">Your ID:</label>
        <input type="number" id="id" readonly="readonly" name="id" value="<%= student.getId() %>" placeholder="<%= student.getId() %>"><br>
        <label for="fullName">Full Name:</label>
        <input type="text" id="fullName" name="fullName" required placeholder="<%= student.getFullName() %>"><br>
        <label for="dob">Date of Birth:</label>
        <input type="text" id="dob" name="dob" required placeholder=" <%= student.getDob() %>"><br>
        <label for="gender">Gender:</label>
        <input type="text" id="gender" name="gender" required placeholder=" <%= student.getGender() %>"><br>
        <label for="nationality">Nationality:</label>
        <input type="text" id="nationality" name="nationality" required placeholder=" <%= student.getNationality() %>"><br>
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required placeholder=" <%= student.getAddress() %>"><br>
        <label for="city">City:</label>
        <input type="text" id="city" name="city" required placeholder=" <%= student.getCity() %>" ><br>
        <label for="state">State:</label>
        <input type="text" id="state" name="state" required placeholder=" <%= student.getState() %>"><br>
        <label for="zip">Zip:</label>
        <input type="text" id="zip" name="zip" required placeholder=" <%= student.getZip() %>"><br>
        <label for="email">Email Address:</label>
        <input type="email" id="email" name="email" required placeholder=" <%= student.getEmail() %>"><br>
        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone" required placeholder=" <%= student.getPhone() %>"><br>
      </fieldset>
      <fieldset>
        <legend>Educational Information</legend>
        <label for="school">School/College/University Name:</label>
        <input type="text" id="school" name="school" required placeholder=" <%= student.getSchool() %>"><br>
        <label for="major">Major/Program of Study:</label>
        <input type="text" id="major" name="major" required placeholder=" <%= student.getMajor() %>"><br>
        <label for="year">Year of Study:</label>
        <input type="number" id="year" name="year" required placeholder=" <%= student.getYear() %>"><br>
        <label for="studentId">Student ID Number:</label>
        <input type="text" id="studentId" name="studentId" required placeholder=" <%= student.getStudentId() %>"><br>
        <label for="gpa">Percentage :</label>
        <input type="number" id="gpa" name="gpa" required placeholder=" <%= student.getGpa() %>"><br>
      </fieldset>
      <button type="reset">Clear Data</button>
      <button type="submit">Update Data</button>
    </form>
    <br>
    <a href="index.html"><button>Home</button></a>
  </div>
</body>
</html>
