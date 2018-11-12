<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript">

</script>
</head>
<!------ Include the above in your HEAD tag ---------->
<!--        .box img{
	opacity: 0.8;
    
   } 
    .box:hover img {
        
        opacity: 1.0;    
    	
    } -->
<style type="text/css">
.port-image
{
    width: 100%;
}

.thumbnail img {
    height:500;
    width:auto;
    object-fit: contain;
    border: 4px solid black;
    border-radius: 3px;
}
body{
    background: url("D:/nepart/images/p9.jpg")fixed; 
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
}
.box{
        height: auto;
        width : auto;
        color: #fff;
        position: relative;
        overflow:visible;
    }


</style>
<body>
<%@include file="navbar.jsp" %>
 <div class="container">
 <div class="row">
 <div class="col-md-8">
 <div class="thumbnail">
  <div class="box">
       <img src="${img.path}" class="img-responsive">
  </div>
  </div>
 </div>
 <div class="col-md-4">
<div class="table-responsive">
  <table class="table">
  <tr>
    <td colspan="2" align="center"><h3>${img.title}</h3></td>
    </tr>
    <tr>
    <td>Artist Name:</td>
    <td>${img.artistname}</td>
    </tr>
    <tr>
    <td>Category</td>
    <td>${img.category}</td>
    </tr>
        <tr>
    <td>Price</td>
    <td>RS ${img.price}</td>
    </tr>
            <tr>
    <td>Description</td>
    <td>${img.description}</td>
    </tr>
    <tr>
    <td colspan="2" align="center"><a href="#"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</a></td>
    </tr>
    
    </table>
</div>


 </div>
 </div>
 </div>
 <%@include file="footer.jsp" %>
 
 </body>
 </html>
 