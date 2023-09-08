<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="com.example.demo.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <style>
        /* Add inline CSS styles here */
        h1 {
            text-align: center;
            font-size: 24px;
            color: #007bff;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #f0f0f0;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>List of Products</h1>
    <table border="1">
        <tr>
            <th>Product id</th>
            <th>Product name</th>
            <th>Product Cost</th>
            <th>Edit Action</th>
            <th>Delete Action</th>
        </tr>
        <%
        List<Product> list = (List<Product>) request.getAttribute("list");
        for (Product product : list) {
        %>
        <tr>
            <td><%= product.getPid() %></td>
            <td><%= product.getPname() %></td>
            <td><%= product.getCost() %></td>
            <td><a href="edit.jsp?id=<%= product.getPid() %>">Edit</a></td>
            <td><a href="delete.jsp?id=<%= product.getPid() %>">Delete</a></td>
        </tr>
        <%
        }
        %>
    </table>
</body>
</html>
