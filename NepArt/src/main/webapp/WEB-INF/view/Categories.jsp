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
 <!------ 	.thumbnail:img hover{
   opacity:1.0;
    }
    
   .box img{
	opacity: 0.8;
    
   }  -->
<style type="text/css">
    .category-title
{
    font-size: 36px;
    color: #FFF;
    text-align: center;
    font-weight: 500;
    margin-bottom: 30px;
}



.port-image
{
    width: 100%;
}

.category_product
{
    margin-bottom: 30px;
}

.thumbnail img {
    height:250px;
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
        height: 250px;
        width : auto;
        color: #fff;
        position: relative;
        overflow:hidden;
    }
    .box figure {
        position: absolute;
        padding: 10px 15px;
        width: 100%;
        bottom: -25%;
        transition: ease-in-out .5s;
        background: rgba(0, 0, 0, 0.71);
        border-top: 1px solid #fff;
    }
    .box:hover figure {
        bottom: 0;
        opacity: 1.0;
         
    	
    }
    .box:hover img {
        
        opacity: 1.0;    
    	
    }

   h1 {
    font-family: "Times New Roman", Times, serif;
    size : 36px;
    text-align : center;
} 

</style>
<body>
<%@include file="navbar.jsp" %>
 <div class="container">
        <div class="row">
        
            <h1>${button}</h1>
        
		<hr>
         </div>
         </div>
         <c:forEach items="${imageList}" var="img">
         
        <div class="col-sm-3">
        <a href="${pageContext.request.contextPath}/detailimage.do?id=${img.image_id}">
         <div class="thumbnail">
                <div class="box">
                  <figure>
                  <p><strong>${img.title} </strong>
          			by ${img.artistname}</p>
                    
                    </figure>
                <img src="${img.path}" class="img-responsive">
              </div>
              </div>
              </a>
              </div>
              
       </c:forEach>
         
       
</body>
</html>