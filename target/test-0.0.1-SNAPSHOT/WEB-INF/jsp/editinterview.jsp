<!DOCTYPE html>
<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
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
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
        <h1>Edit Interview</h1>  
       <form:form method="POST" action="interview/editsave">    
        <table >    
        <tr>  
        <td>interviewId</td>    
         <td><form:input  path="interviewId" /></td>  
         </tr>   
         <tr>    
          <td>companyName : </td>   
          <td><form:textarea path="companyName"  /></td>  
         </tr>    
         <tr>    
          <td>failureReason :</td>    
          <td><form:textarea path="failureReason" /></td>  
         </tr>   
           <tr>   
          <td>Answer :</td>    
          <td><form:textarea id="viewdata" path="answer"/>  
          <button type="button" id="viewdata" class="btn btn-info btn-lg" 
          data-toggle="modal" data-target="#myModal">View Answer</button>
          </td>  
         </tr>
         <tr>    
          <td>Interview Date :</td>    
          <td><form:input path="interviewDate" /></td>  
         </tr>
         <tr>    
          <td>InterviewQuestion :</td>    
          <td><form:input path="interviewQuestion" /></td>  
         </tr>
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Edit Save" /></td>    
         </tr>    
        </table>   
        <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Answer Information:</h4>
        </div>
        <div class="modal-body model-lg">
				<p><form:textarea path="answer"></form:textarea></p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div> 
       </form:form> 
       </div>
 </body>      
</html>  