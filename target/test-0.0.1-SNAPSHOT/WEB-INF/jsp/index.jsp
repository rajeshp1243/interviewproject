<!DOCTYPE html>
<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<html lang="en">
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
</head>
<body>
<div class="container">
        <h1>Add New Interview</h1>  
       <form:form method="post" action="saveInterviewInfo">    
        <table >    
         <tr>    
          <td>interviewId : </td>   
          <td><form:input path="interviewId"  /></td>  
         </tr>    
         <tr>    
          <td>companyName :</td>    
          <td><form:textarea path="companyName" /></td>  
         </tr>   
         <tr>    
          <td>FailureReason :</td>    
          <td><form:textarea path="failureReason" /></td>  
         </tr> 
          <tr>    
          <td>Answer :</td>    
          <td><form:textarea path="answer" /></td>  
         </tr>
          <tr>    
          <td>InterviewDate :</td>    
          <td><form:input path="interviewDate" /></td>  
         </tr> 
          <tr>    
          <td>InterviewQuestion :</td>    
          <td><form:input path="interviewQuestion" /></td>  
         </tr>  
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Save/update" /></td>
          <a href="getAllinterviews">All Interviews</a>  
              
         </tr>    
        </table>    
       </form:form>    
 </div>
 </body>
 </html>      