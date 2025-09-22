<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List, com.airtel.model.ServiceRequest" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    @SuppressWarnings("unchecked")
    List<ServiceRequest> requests = (List<ServiceRequest>) request.getAttribute("requests");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Service Requests</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .table-container {
            margin: 50px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 80%;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .no-requests {
            text-align: center;
            color: #6c757d;
            font-style: italic;
        }
    </style>
</head>
<body>
    <div class="table-container">
        <h2>Service Requests</h2>

        <c:choose>
            <c:when test="${not empty requests}">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Contact</th>
                            <th>Service Type</th>
                            <th>Address</th>
                            <th>Message</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requests}" var="request">
                            <tr>
                                <td>${request.id}</td>
                                <td>${not empty request.name ? request.name : 'N/A'}</td>
                                <td>${not empty request.contact ? request.contact : 'N/A'}</td>
                                <td>${not empty request.serviceType ? request.serviceType : 'N/A'}</td>
                                <td>${not empty request.address ? request.address : 'N/A'}</td>
                                <td>${not empty request.message ? request.message : 'N/A'}</td>
                                <td>${not empty request.status ? request.status : 'Pending'}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <p class="no-requests">No service requests available at the moment.</p>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>