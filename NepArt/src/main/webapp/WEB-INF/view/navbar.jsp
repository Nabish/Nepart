
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-default navbar-static-top">
	<div class="container-fluid">
		<div class="navbar-header">

			<a class="navbar-brand" href="#myPage"> <img src="E:\uploads\pics\logo.png" height="35" width="60"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="${pageContext.request.contextPath}/Index.do">HOME</a></li>
 				<li class="dropdown">
          			<a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories
         					 <span class="caret"></span></a>
          					
          					<ul class="dropdown-menu">
          			<form action="${pageContext.request.contextPath}/Categories.do" method="get">
          			<button class="dropdown-toggle btn btn-link" type="submit" value="All" name="button">All</button><br>
           			<button class="dropdown-toggle btn btn-link" type="submit" value="Painting" name="button">Painting</button>
  					<button class="dropdown-toggle btn btn-link" type="submit" value="Photography" name="button">Photography</button>
    				<button class="dropdown-toggle btn btn-link" type="submit" value="Sketching" name="button">Sketching</button>
  					<button class="dropdown-toggle btn btn-link" type="submit" value="Sculpture" name="button">Sculpture</button>
  					<button class="dropdown-toggle btn btn-link" type="submit" value="Handicraft" name="button">Handicraft</button>
         			 </form>
         			 </ul>
         			 
        			</li>
				<li><a href="${pageContext.request.contextPath}/event.do">Events and Exhibition</a></li>
				<li><a href="${pageContext.request.contextPath}/AboutUs.do">About us</a></li>
				<li><a href="${pageContext.request.contextPath}/ContactUs.do">Contact us</a></li>
				<c:choose>
					<c:when test="${empty sessionScope.artist}">
						<li>
							<a href="${pageContext.request.contextPath}/Login.do">Login</a></li>
							<li>
							 
						</li>	
							<!-- Modal -->
						</c:when>


					<c:otherwise>
						<li><a href="${pageContext.request.contextPath}/Logout.do">Logout</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</nav>
   