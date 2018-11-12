<!DOCTYPE html>
<html lang="en">
<head>

  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
       
      
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */

  </style>
  </head>
  <body>
  <%@include file="navbar.jsp"%>
  
  
<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-4 sidenav">
      
      <ul class="nav nav-pills nav-stacked">
        <table class="table table-hover" border=0 align=left>
        <tr>
        <th>Name:</th>
        <td>${artist.username}</td>
        </tr>
        <tr>
        <th>Email:</th>
        <td>${artist.email}</td>
        </tr>
        <tr>
        <th>Details:</th>
        <td>${artist.aboutyourself}</td>
        </tr>               
        </table>
        
      </ul><br>
      <a href="${pageContext.request.contextPath}/uploadArtistimages.do?id=${artist.artist_id}"><button class="btn btn-primary btn-md">Upload</button></a>
      </div>
	<!-- artist uploads -->
	
	<c:forEach items="${imageList}" var="img">
	
	 <div class="col-sm-4">
        <div class="thumbnail">
          <img src="${img.path}" alt="https://placehold.it/150x80?text=IMAGE" width="400" height="300">
          <p><strong>${img.title}</strong></p>
          <p>${img.description}</p>
          <form action="${pageContext.request.contextPath}/editContent.do?id=${img.image_id}" method="post">
         <button class="btn btn-default">edit</button>
         </form>
         <button type="button" class="btn btn-default">Mark SoldOut</button>
     	<button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">Delete</button>
</div>
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>

        <h4 class="modal-title">Delete Image</h4>
      </div>
      <div class="modal-body">
        <p>Do you want to delete the current Image?</p>
      </div>
      
      <div class="modal-footer">
       <a href="${pageContext.request.contextPath}/deleteImage.do?id=${img.image_id}"> <button type="button" class="btn btn-default">Yes</button></a>
        <button type="button" class="btn btn-default" data-dismiss="modal">NO</button>
      </div>
    </div>

  </div>
</div>  
      </div>
     </c:forEach>
   </div>
</div>
  
  </body>
  </html>
  