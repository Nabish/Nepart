<!DOCTYPE html>
<html lang="en">
<head>

  <title>Home page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  <script type="text/javascript">
  
    $(document).ready(function(){

    $(".filter-button").click(function(){
        var value = $(this).attr('data-filter');
        if(value == "all")
        {
            //$('.filter').removeClass('hidden');
            $('.filter').show('1000');
            
        }
        else
        {
          $('.filter[filter-item="'+value+'"]').removeClass('hidden');
            $(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
            $(".filter").not('.'+value).hide('3000');
            $('.filter').filter('.'+value).show('3000');

            
        }
    });
    
    if ($(".filter-button").removeClass("active")) {
$(this).removeClass("active");
}
$(this).addClass("active");

});
</script>

 <style type="text/css">
.filter-button
{
    font-size: 18px;
    border: 1px solid teal;
    border-radius: 5px;
    text-align: center;
    color: teal;
    margin-bottom: 30px;

}
.filter-button:hover
{
    font-size: 18px;
    border: 1px solid #FFF;
    border-radius: 5px;
    text-align: center;
    color: #ffffff;
    background-color: teal;

}
.btn-default:active .filter-button:active
{
    background-color: teal;
    color: white;
}

.port-image
{
    width: 100%;
}

.category_product
{
    margin-bottom: 30px;
}
body{
  background: url("C:/Users/User/Downloads/Compressed/images/purple1.jpg")fixed; 
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;
}

.thumbnail img {
    height:250px;
    width:auto;
    object-fit: contain;
    border: 4px solid black;
    border-radius: 3px;
}
.box{
        height: 250px;
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
    }
.container {
  position: relative;
  width: 50%;
}
.container .btn {
  position: absolute;
  top: 80%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: #AEA6A6;
  color: white;
  font-size: 16px;
  padding: 12px 24px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  opacity : 0.7;
}

.container .btn:hover {
  background-color: black;
}

</style>

  </head>
  <body>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@include file="navbar.jsp"%> 
  <div class="container">
  <img src="E:/uploads/pics/homepage.jpg" alt="homepage" style="width:100%;">
  <a href="${pageContext.request.contextPath}/signup.do"><button class="btn btn-primary">SignUp</button></a>
  
  </div>


 <div class="container">

        <div align="center">
            <button class="btn btn-default filter-button" data-filter="all">All</button>
            <button class="btn btn-default filter-button" data-filter="Featured">Featured</button>
            <button class="btn btn-default filter-button" data-filter="Popular">Popular</button>
            <button class="btn btn-default filter-button" data-filter="Recent">Recent</button>
          
        <br/>



            <div class="category_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Featured">
              <div class="thumbnail">
                <div class="box">
                <figure>
                        <a href="#" class="btn pull-left"><i class="fa fa-search"></i> View</a>
                        <a href="#" class="btn pull-right">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                    </figure>
                <img src="E:/uploads/pics/1.jpg" class="img-responsive">
              </div>
            </div>
            </div>

            <div class="category_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Popular">
              <div class="thumbnail">
                 <div class="box">
                  <figure>
                        <a href="#" class="btn pull-left"><i class="fa fa-search"></i> View</a>
                        <a href="#" class="btn pull-right">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                    </figure>
                <img src="E:/uploads/pics/2.jpg" class="img-responsive">
              </div>
              </div>
            </div>

            <div class="category_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Featured">
              <div class="thumbnail">
                <div class="box">
                  <figure>
                        <a href="#" class="btn pull-left"><i class="fa fa-search"></i> View</a>
                        <a href="#" class="btn pull-right">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                    </figure>
                <img src="E:/uploads/pics/3.jpg" class="img-responsive">
              </div>
              </div>
            </div>

            <div class="category_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Popular">
              <div class="thumbnail">
                <img src="E:/uploads/pics/4.jpg" class="img-responsive">
              </div>
            </div>

            <div class="category_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Featured">
              <div class="thumbnail">
                <div class="box">
                  <figure>
                        <a href="#" class="btn pull-left"><i class="fa fa-search"></i> View</a>
                        <a href="#" class="btn pull-right">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                    </figure>
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
              </div>
              </div>
            </div>

            <div class="category_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Popular">
              <div class="thumbnail">
                <div class="box">
                  <figure>
                        <a href="#" class="btn pull-left"><i class="fa fa-search"></i> View</a>
                        <a href="#" class="btn pull-right">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                    </figure>
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
              </div>
              </div>
            </div>

            <div class="category_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Recent">
              <div class="thumbnail">
                <div class="box">
                  <figure>
                        <a href="#" class="btn pull-left"><i class="fa fa-search"></i> View</a>
                        <a href="#" class="btn pull-right">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                    </figure>
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
              </div>
              </div>
            </div>

            <div class="category_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Recent">
              <div class="thumbnail">
                <div class="box">
                  <figure>
                        <a href="#" class="btn pull-left"><i class="fa fa-search"></i> View</a>
                        <a href="#" class="btn pull-right">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                    </figure>
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
              </div>
              </div>
            </div>

            <div class="category_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Featured">
              <div class="thumbnail">
                <div class="box">
                  <figure>
                        <a href="#" class="btn pull-left"><i class="fa fa-search"></i> View</a>
                        <a href="#" class="btn pull-right">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                    </figure>
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
              </div>
              </div>
            </div>

            <div class="category_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Recent">
              <div class="thumbnail">
                <div class="box">
                  <figure>
                        <a href="#" class="btn pull-left"><i class="fa fa-search"></i> View</a>
                        <a href="#" class="btn pull-right">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                    </figure>
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
              </div>
              </div>
            </div>

            <div class="category_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Popular">
              <div class="thumbnail">
                <div class="box">
                  <figure>
                        <a href="#" class="btn pull-left"><i class="fa fa-search"></i> View</a>
                        <a href="#" class="btn pull-right">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                    </figure>
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
              </div>
              </div>
            </div>

            <div class="category_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Recent">
              <div class="thumbnail">
                <div class="box">
                  <figure>
                        <a href="#" class="btn pull-left"><i class="fa fa-search"></i> View</a>
                        <a href="#" class="btn pull-right">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                    </figure>
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
              </div>
              </div>
            </div>
        </div>
    </div>
<%@include file="footer.jsp" %>

  </body>
  </html>
  