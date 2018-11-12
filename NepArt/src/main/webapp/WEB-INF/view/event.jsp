<!DOCTYPE html>
<html lang="en">
<head>
  <title>Events and exhibition</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    .eventback{
   background-image: url("photos/eventbg.jpg");
   
}
  </style>
</head>
<body>

 <%@include file="navbar.jsp"%> 
<div class="container text-center">    
  <div class="row">    
    <div class="col-sm-9">    
      <div class="row">
        <div class="col-sm-12">
          <div class="panel panel-default text-left">
            <div class="panel-body">
              <p contenteditable="true" ><h1 class="eventback">Events and exhibition<h1></p>
              <button type="button" class="btn btn-default btn-sm" >
                <span class="glyphicon glyphicon-calendar"></span> Event Lists
              </button>     
            </div>
          </div>
        </div>
      </div>
      <c:forEach items="${eventList}" var="event">
      <div class="row">
        <div class="col-sm-4">
          <div class="well">
           
           <img src="${event.eventpicture}" class="img-square" height="180" width="180" alt="events">
          </div>
        </div>
        <div class="col-sm-8">
          <div class="well">
          	<h4><b>${event.eventname}</b></h4>
            <p>${event.description}	
			</p>
          </div>
        </div>
       < a href="${pageContext.request.contextPath}/Login.do">Login</a>
      </div>
      </c:forEach>
      
  </div>
</div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
