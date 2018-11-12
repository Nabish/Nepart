<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title></title>
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="artstyle.css">
	<link rel="stylesheet" type="text/css" href="js.html">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
<form method="post"  action="${pageContext.request.contextPath}/eventadd" enctype="multipart/form-data">
  <div class="form-group">
    <label>Event name:</label><input type="text" class="form-control" id="eventname" name="eventname" >
  </div>
  <div class="form-group">
    <label >Category:</label>
    <input type="text" class="form-control" id="category" name="category" >
  </div>
  <div class="form-group">
    <label >Start date:</label>
    <input type="date" class="form-control" id="startdate" name="startdate">
  </div>
  <div>
    <label>End date:</label>
    <input type="date" class="form-control" id="enddate" name="enddate">
  </div>
  <div class="form-group">
    <label>Start time:</label>
    <input type="time" class="form-control" id="time" name="time">
  </div>
  <div class="form-group">
    <label>Ticket price:</label>
    <input type="text" class="form-control" id="ticketprice" name="ticketprice">
  </div>
  <div class="form-group">
    <label>Venue:</label>
    <input type="text" class="form-control" id="venue" name="venue">
  </div>
  <div class="form-group">
    <label>Location:</label>
    <input type="text" class="form-control" id="location" name="location">
  </div>
   <div class="form-group">
    <label>Description:</label><br>
    <textarea rows="10" cols="75" id="description" name="description">

</textarea>
  </div>
  
  <div class="container">
<div class="col-md-6">
    <div class="form-group">
        <label>Event Image</label>
        <div class="input-group">
            <span class="input-group-btn">
                <span class="btn btn-default btn-file">
                   Browse <input type="file" id="eventimage" name="eventimage">
                </span>
            </span>
            <input type="text" class="form-control" readonly>
        </div>
        <img id='img-upload'/>
    </div>
</div>
</div>

 
  <button type="submit" class="btn btn-default">Submit</button>
</form>
</div>
</div>
</div>
</body>
</html>