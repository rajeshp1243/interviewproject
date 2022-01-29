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
  <style>  
.error{color:red}  
input:invalid {
  border: 2px dashed red;
}

input:invalid:required {
  background-image: linear-gradient(to right, pink, lightgreen);
}

input:valid {
  border: 2px solid black;
}
</style>  
  <script type="text/javascript">
			function myAnswer() {
				var result = '';
				var i, start, end, answerData;
				answerData = document.getElementById("answers").value;
				while (answerData.length > 0) {
					result = result+"<p>"+answerData.substring(0,71)+"</p>"+'\n';
					answerData = answerData.substring(71);
				}
				console.log(result);
				return result;
			}
		</script>
</head>
<body>
<div class="container">
        <h1>Add New Interview</h1>
		<form:form method="post" action="saveInterviewInfo">
			<table>
				<tr>
					<td>interviewId : </td>
					<td><form:input path="interviewId"></form:input></td>
				</tr><br>
				<tr>
					<td>InterviewDate</td>
					<td><form:input path="interviewDate" value="00/07/2021" cssClass="invalid" /></td>
				</tr>
				<tr>
					<td>companyName(*)</td>
					<td><form:textarea path="companyName"/></td>
					<form:errors path="companyName" cssClass="error"></form:errors>
				</tr>
				<tr>
					<td>InterviewQuestion(*)</td>
					<td><form:textarea path="interviewQuestion"
							value="interviewsFailedReasons"
							placeholder="interviewsFailedReasons"/></td>
				</tr>
				<tr>
					<td>Answer</td>
					<td><form:textarea path="answer" id="answers" 
							onclick="myAnswer()"></form:textarea></td>
				</tr>
				<tr>
					<td>ReasonForRejection</td>
					<td><form:textarea path="failureReason"/></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Save/update" /></td>
					<a href="getAllinterviews">All Interviews</a>

				</tr>
			</table>
		</form:form>
	</div>
 </body>
 </html>      