<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<style>
body {
  font-family: Arial;
}

* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
</style>
</head>
<body>
	<div class="container">
	<a href="indexpage">Add New Interview</a>
		<h1>Interview List</h1>
		<form class="example" action="search?name=keyword">
			    <input type="text" placeholder="search"
			name="keyword" id="keyword" size="50"
				th:value="${keyword}" required />      
				<input type="submit" value="Search" />    
		</form>
		<br>
		<table border="2" width="70%" cellpadding="2">
			<tr>
				<th>Id</th>
				<th>CompanyName</th>
				<th>FailureReason</th>
				<th>answer</th>
				<th>interviewDate</th>
				<th>interviewQuestion</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="interview" items="${list}">
				<tr>
					<td>${interview.interviewId}</td>
					<td>${interview.companyName}</td>
					<td>${interview.failureReason}</td>
					<td>${interview.answer}</td>
					<td>${interview.interviewDate}</td>
					<td>${interview.interviewQuestion}</td>

					<td><a href="getInterviewById/${interview.interviewId}"><button
								type="button" class="btn btn-info btn-lg">view</button></a></td>
					<td><a href="deleteInterview/${interview.interviewId}"><button
								type="button" class="btn btn-info btn-lg">Delete</button></a></td>
				</tr>
			</c:forEach>
			 <br/>    
    <a href="/interview/getAllinterviews?pageNo=0&pageSize=2&sortBy=interviewDate">1||</a>     
   <a href="/interview/getAllinterviews?pageNo=1&pageSize=2&sortBy=interviewDate">2||</a>     
   <a href="/interview/getAllinterviews?pageNo=2&pageSize=2&sortBy=interviewDate">3||</a> 
   <a href="/interview/getAllinterviews?pageNo=3&pageSize=2&sortBy=interviewDate">4||</a>    
   <a href="/interview/getAllinterviews?pageNo=4&pageSize=2&sortBy=interviewDate">5||</a>    
   <a href="/interview/getAllinterviews?pageNo=5&pageSize=2&sortBy=interviewDate">6||</a>    
   <a href="/interview/getAllinterviews?pageNo=6&pageSize=2&sortBy=interviewDate">7||</a>    
   <a href="/interview/getAllinterviews?pageNo=7&pageSize=2&sortBy=interviewDate">8||</a>    
   <a href="/interview/getAllinterviews?pageNo=8&pageSize=2&sortBy=interviewDate">9||</a>    
   <a href="/interview/getAllinterviews?pageNo=9&pageSize=2&sortBy=interviewDate">10||</a>    
   <a href="/interview/getAllinterviews?pageNo=10&pageSize=2&sortBy=interviewDate">11||</a>
   <a href="/interview/getAllinterviews?pageNo=11&pageSize=2&sortBy=interviewDate">12||</a>    
   <a href="/interview/getAllinterviews?pageNo=12&pageSize=2&sortBy=interviewDate">13||</a>    
   <a href="/interview/getAllinterviews?pageNo=13&pageSize=2&sortBy=interviewDate">14||</a>    
   <a href="/interview/getAllinterviews?pageNo=14&pageSize=2&sortBy=interviewDate">15||</a>    
   <a href="/interview/getAllinterviews?pageNo=15&pageSize=2&sortBy=interviewDate">16||</a>    
   <a href="/interview/getAllinterviews?pageNo=16&pageSize=2&sortBy=interviewDate">17||</a>    
   <a href="/interview/getAllinterviews?pageNo=17&pageSize=2&sortBy=interviewDate">18||</a> 
    <a href="/interview/getAllinterviews?pageNo=18&pageSize=2&sortBy=interviewDate">19||</a>    
   <a href="/interview/getAllinterviews?pageNo=19&pageSize=2&sortBy=interviewDate">20||</a>    
   <a href="/interview/getAllinterviews?pageNo=20&pageSize=2&sortBy=interviewDate">21||</a>    
   <a href="/interview/getAllinterviews?pageNo=21&pageSize=2&sortBy=interviewDate">22||</a>    
   <a href="/interview/getAllinterviews?pageNo=22&pageSize=2&sortBy=interviewDate">23||</a>    
   <a href="/interview/getAllinterviews?pageNo=23&pageSize=2&sortBy=interviewDate">24||</a>    
   <a href="/interview/getAllinterviews?pageNo=24&pageSize=2&sortBy=interviewDate">25||</a> 
    <a href="/interview/getAllinterviews?pageNo=25&pageSize=2&sortBy=interviewDate">26||</a>    
   <a href="/interview/getAllinterviews?pageNo=26&pageSize=2&sortBy=interviewDate">27||</a>    
   <a href="/interview/getAllinterviews?pageNo=27&pageSize=2&sortBy=interviewDate">28||</a>    
   <a href="/interview/getAllinterviews?pageNo=28&pageSize=2&sortBy=interviewDate">29||</a>    
   <a href="/interview/getAllinterviews?pageNo=29&pageSize=2&sortBy=interviewDate">30||</a>    
   <a href="/interview/getAllinterviews?pageNo=30&pageSize=2&sortBy=interviewDate">31||</a>    
   <a href="/interview/getAllinterviews?pageNo=31&pageSize=2&sortBy=interviewDate">32||</a> 
    <a href="/interview/getAllinterviews?pageNo=32&pageSize=2&sortBy=interviewDate">33||</a>    
   <a href="/interview/getAllinterviews?pageNo=33&pageSize=2&sortBy=interviewDate">34||</a>    
   <a href="/interview/getAllinterviews?pageNo=34&pageSize=2&sortBy=interviewDate">35||</a>    
   <a href="/interview/getAllinterviews?pageNo=35&pageSize=2&sortBy=interviewDate">36||</a>    
   <a href="/interview/getAllinterviews?pageNo=36&pageSize=2&sortBy=interviewDate">37||</a>    
   <a href="/interview/getAllinterviews?pageNo=37&pageSize=2&sortBy=interviewDate">38||</a>    
   <a href="/interview/getAllinterviews?pageNo=38&pageSize=2&sortBy=interviewDate">39||</a> 
   <a href="/interview/getAllinterviews?pageNo=39&pageSize=2&sortBy=interviewDate">40||</a>     
   <a href="/interview/getAllinterviews?pageNo=40&pageSize=2&sortBy=interviewDate">41||</a> 
    <a href="/interview/getAllinterviews?pageNo=41&pageSize=2&sortBy=interviewDate">42||</a>    
   <a href="/interview/getAllinterviews?pageNo=42&pageSize=2&sortBy=interviewDate">43||</a>    
   <a href="/interview/getAllinterviews?pageNo=43&pageSize=2&sortBy=interviewDate">44||</a>    
   <a href="/interview/getAllinterviews?pageNo=44&pageSize=2&sortBy=interviewDate">45||</a>    
   <a href="/interview/getAllinterviews?pageNo=45&pageSize=2&sortBy=interviewDate">46||</a>    
   <a href="/interview/getAllinterviews?pageNo=46&pageSize=2&sortBy=interviewDate">47||</a>    
   <a href="/interview/getAllinterviews?pageNo=47&pageSize=2&sortBy=interviewDate">48||</a> 
    <a href="/interview/getAllinterviews?pageNo=48&pageSize=2&sortBy=interviewDate">49||</a>    
   <a href="/interview/getAllinterviews?pageNo=49&pageSize=2&sortBy=interviewDate">50||</a>    
   <a href="/interview/getAllinterviews?pageNo=50&pageSize=2&sortBy=interviewDate">51||</a>    
   <a href="/interview/getAllinterviews?pageNo=51&pageSize=2&sortBy=interviewDate">52||</a>    
   <a href="/interview/getAllinterviews?pageNo=52&pageSize=2&sortBy=interviewDate">53||</a>    
   <a href="/interview/getAllinterviews?pageNo=53&pageSize=2&sortBy=interviewDate">54||</a>    
   <a href="/interview/getAllinterviews?pageNo=54&pageSize=2&sortBy=interviewDate">55||</a> 
   <a href="/interview/getAllinterviews?pageNo=55&pageSize=2&sortBy=interviewDate">56||</a>  
   <a href="/interview/getAllinterviews?pageNo=56&pageSize=2&sortBy=interviewDate">57||</a> 
    <a href="/interview/getAllinterviews?pageNo=57&pageSize=2&sortBy=interviewDate">58||</a>    
   <a href="/interview/getAllinterviews?pageNo=58&pageSize=2&sortBy=interviewDate">59||</a>    
   <a href="/interview/getAllinterviews?pageNo=59&pageSize=2&sortBy=interviewDate">60||</a>    
   <a href="/interview/getAllinterviews?pageNo=60&pageSize=2&sortBy=interviewDate">61||</a>    
   <a href="/interview/getAllinterviews?pageNo=61&pageSize=2&sortBy=interviewDate">62||</a>    
   <a href="/interview/getAllinterviews?pageNo=62&pageSize=2&sortBy=interviewDate">63||</a>    
   <a href="/interview/getAllinterviews?pageNo=63&pageSize=2&sortBy=interviewDate">64||</a> 
    <a href="/interview/getAllinterviews?pageNo=64&pageSize=2&sortBy=interviewDate">65||</a>    
   <a href="/interview/getAllinterviews?pageNo=65&pageSize=2&sortBy=interviewDate">66||</a>    
   <a href="/interview/getAllinterviews?pageNo=66&pageSize=2&sortBy=interviewDate">67||</a>    
   <a href="/interview/getAllinterviews?pageNo=67&pageSize=2&sortBy=interviewDate">68||</a>    
   <a href="/interview/getAllinterviews?pageNo=68&pageSize=2&sortBy=interviewDate">69||</a>    
   <a href="/interview/getAllinterviews?pageNo=69&pageSize=2&sortBy=interviewDate">70||</a>    
   <a href="/interview/getAllinterviews?pageNo=70&pageSize=2&sortBy=interviewDate">71||</a> 
   <a href="/interview/getAllinterviews?pageNo=71&pageSize=2&sortBy=interviewDate">72||</a>  
   <a href="/interview/getAllinterviews?pageNo=72&pageSize=2&sortBy=interviewDate">73||</a> 
    <a href="/interview/getAllinterviews?pageNo=73&pageSize=2&sortBy=interviewDate">74||</a>    
   <a href="/interview/getAllinterviews?pageNo=74&pageSize=2&sortBy=interviewDate">75||</a>    
   <a href="/interview/getAllinterviews?pageNo=75&pageSize=2&sortBy=interviewDate">76||</a>    
   <a href="/interview/getAllinterviews?pageNo=76&pageSize=2&sortBy=interviewDate">77||</a>    
   <a href="/interview/getAllinterviews?pageNo=77&pageSize=2&sortBy=interviewDate">78||</a>    
   <a href="/interview/getAllinterviews?pageNo=78&pageSize=2&sortBy=interviewDate">79||</a>    
   <a href="/interview/getAllinterviews?pageNo=79&pageSize=2&sortBy=interviewDate">80||</a> 
    <a href="/interview/getAllinterviews?pageNo=80&pageSize=2&sortBy=interviewDate">81||</a>    
   <a href="/interview/getAllinterviews?pageNo=81&pageSize=2&sortBy=interviewDate">82||</a>    
   <a href="/interview/getAllinterviews?pageNo=82&pageSize=2&sortBy=interviewDate">83||</a>    
   <a href="/interview/getAllinterviews?pageNo=83&pageSize=2&sortBy=interviewDate">84||</a>    
   <a href="/interview/getAllinterviews?pageNo=84&pageSize=2&sortBy=interviewDate">85||</a>    
   <a href="/interview/getAllinterviews?pageNo=85&pageSize=2&sortBy=interviewDate">86||</a>    
   <a href="/interview/getAllinterviews?pageNo=86&pageSize=2&sortBy=interviewDate">87||</a> 
   <a href="/interview/getAllinterviews?pageNo=87&pageSize=2&sortBy=interviewDate">88||</a>  
   <a href="/interview/getAllinterviews?pageNo=88&pageSize=2&sortBy=interviewDate">89||</a> 
    <a href="/interview/getAllinterviews?pageNo=89&pageSize=2&sortBy=interviewDate">90||</a>    
   <a href="/interview/getAllinterviews?pageNo=90&pageSize=2&sortBy=interviewDate">91||</a>    
   <a href="/interview/getAllinterviews?pageNo=91&pageSize=2&sortBy=interviewDate">92||</a>    
   <a href="/interview/getAllinterviews?pageNo=92&pageSize=2&sortBy=interviewDate">93||</a>    
   <a href="/interview/getAllinterviews?pageNo=93&pageSize=2&sortBy=interviewDate">94||</a>    
   <a href="/interview/getAllinterviews?pageNo=94&pageSize=2&sortBy=interviewDate">95||</a>    
   <a href="/interview/getAllinterviews?pageNo=95&pageSize=2&sortBy=interviewDate">96||</a> 
    <a href="/interview/getAllinterviews?pageNo=96&pageSize=2&sortBy=interviewDate">97||</a>    
   <a href="/interview/getAllinterviews?pageNo=97&pageSize=2&sortBy=interviewDate">98||</a>    
   <a href="/interview/getAllinterviews?pageNo=98&pageSize=2&sortBy=interviewDate">99||</a>    
   <a href="/interview/getAllinterviews?pageNo=99&pageSize=2&sortBy=interviewDate">100||</a>    

        
      
		</table>
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Modal Header</h4>
					</div>
					<div class="modal-body">
						<form:form method="POST" action="interview/editsave"
							modelAttribute="list">
							
						</form:form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save
							changes</button>
					</div>
				</div>

			</div>
		</div>

	</div>
</body>
</html>
