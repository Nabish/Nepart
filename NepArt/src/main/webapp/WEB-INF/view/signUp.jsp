<head>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script type="text/javascript">
	$(function() {

    $('#signup-form-link1').click(function(e) {
		$("#signup-form1").delay(100).fadeIn(100);
 		$("#signup-form2").fadeOut(100);
		$('#signup-form-link2').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#signup-form-link2').click(function(e) {
		$("#signup-form2").delay(100).fadeIn(100);
 		$("#signup-form1").fadeOut(100);
		$('#signup-form-link1').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});
</script>
</head>
<!------ Include the above in your HEAD tag ---------->
<style>
	body {
    padding-top: 50px;
}
.panel-signup {
	border-color: #ccc;
	-webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
	-moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
	box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
}
.panel-signup>.panel-heading {
	color: #00415d;
	background-color: #fff;
	border-color: #fff;
	text-align:center;
}
.panel-signup>.panel-heading a{
	text-decoration: none;
	color: #FF2A00;
	font-weight: bold;
	font-size: 15px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}
.panel-signup>.panel-heading a.active{
	color: #029f5b;
	font-size: 18px;
}
.panel-signup>.panel-heading hr{
	margin-top: 10px;
	margin-bottom: 0px;
	clear: both;
	border: 0;
	height: 1px;
	background-image: -webkit-linear-gradient(left,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.15),rgba(0, 0, 0, 0));
	background-image: -moz-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
	background-image: -ms-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
	background-image: -o-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
}
.panel-signup input[type="text"],.panel-signup input[type="password"],.panel-signup input[type="email"],.panel-signup textarea {
	height: 45px;
	border: 1px solid #ddd;
	font-size: 16px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}
.btn-group label
{
  padding-left: 40px;
}

input[type="radio"]:empty
{
  display: none;
}

input[type="radio"] ~ span:before
{
  position: absolute;
  display: block;
  top: 0;
  bottom: 0;
  left: 0;
  content: '';
  width: 2.5em;
  background: #D1D3D4;
}

input[type="radio"]:before
{
  content: '\2714';
  text-indent: .9em;
  color: #C2C2C2;
}

input[type="radio"]:checked ~ span:before
{
  content: '\2714';
  text-indent: .3em;
  color: #fff;
  background-color: #5cb85c;
  line-height: 2.5em;
}
.panel-signup input:hover,
.panel-signup input:focus {
	outline:none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	border-color: #ccc;
}
.btn-signup1 {
	background-color: #3CB371;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #3CB371;
}
.btn-signup1:hover,
.btn-signup1:focus {
	color: 	#fff;
	background-color: 	#3CB371;
	border-color: 	#3CB371;
}
.forgot-password {
	text-decoration: underline;
	color: #888;
}
.forgot-password:hover,
.forgot-password:focus {
	text-decoration: underline;
	color: #666;
}

.btn-signup2 {
	background-color: 	#FF2A00;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: 	#FF2A00;
}
.btn-signup2:hover,
.btn-signup2:focus {
	color: #fff;
	background-color: 	#FFC0CB;
	border-color: 	#FFC0CB;
}
body{
	background: url("D:/nepart/images/p7.jpg")fixed; 
  	background-size: cover;
  	background-repeat: no-repeat;
  	background-position: center;
}
.email{
	padding-top: 10px;
}
</style>

<div class="container-fluid">
    <section class="container">
		<div class="container-page">				
			<div class="container">
    	<div class="row">
			<div class="col-md-6 ">
				<div class="panel panel-signup">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="signup-form-link1">Artist</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="signup-form-link2">Art Enthusiast</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="signup-form1" action="${pageContext.request.contextPath}/addartistinfo.do" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="fullname" id="fullname" tabindex="1" class="form-control" placeholder="Full Name" value="">
									</div>
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="2" class="form-control" placeholder="Username" value="">
									</div>
									<div class="form-group">
										<input type="text" name="address" id="address" tabindex="3" class="form-control" placeholder="Address" value="">
									</div>
									<div class="form-group">
										<input type="text" name="phonenumber" id="phonenumber" tabindex="4" class="form-control" placeholder="Phone Number" value="">
									</div>
									<div class="btn-group">
	        							<label class="btn btn-default">
	            							<input type="radio" name="gender" value="male">
	            							<span>Male</span>
	        							</label>
	        							<label class="btn btn-default">
	           								<input type="radio" name="gender" value="female">
	            							<span>Female</span>
	        							</label>
	        						</div>
	        						<div class="email">
									<div class="form-group">
										<input type="email" name="email" id="email" tabindex="5" class="form-control" placeholder="Email" value="">
									</div>
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="6" class="form-control" placeholder="Password">
									</div>
									<div class="form-group">
										<textarea name="aboutyourself" id="aboutyourself" tabindex="7" class="form-control" placeholder="About Yourself" value="" rows="5" cols="15"></textarea> 
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="signup-submit1" id="signup-submit1" tabindex="4" class="form-control btn btn-signup1" value="Sign Up">
											</div>
										</div>
									</div>
								</form>
								<form id="signup-form2" action="${pageContext.request.contextPath}/addcustomerinfo.do" method="post" role="form" style="display: none;">
									<div class="form-group">
										<input type="text" name="fullname" id="fullname" tabindex="1" class="form-control" placeholder="Full Name" value="">
									</div>
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="2" class="form-control" placeholder="Username" value="">
									</div>
									<div class="form-group">
										<input type="text" name="address" id="address" tabindex="3" class="form-control" placeholder="Address" value="">
									</div>
									<div class="form-group">
										<input type="text" name="phonenumber" id="phonenumber" tabindex="4" class="form-control" placeholder="Phone Number" value="">
									</div>
									<div class="btn-group">
	        							<label class="btn btn-default">
	            							<input type="radio" name="gender" value="male">
	            							<span>Male</span>
	        							</label>
	        							<label class="btn btn-default">
	           								<input type="radio" name="gender" value="female">
	            							<span>Female</span>
	        							</label>
	        						</div>
	        						<div class="email">
									<div class="form-group">
										<input type="email" name="email" id="email" tabindex="5" class="form-control" placeholder="Email" value="">
									</div>
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="6" class="form-control" placeholder="Password">
									</div>
								<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="signup-submit2" id="signup-submit2" tabindex="4" class="form-control btn btn-signup2" value="Sign Up">
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>


		
			<div class="col-md-6">
				<h3 class="dark-grey">Terms and Conditions</h3>
				<p>
					By clicking on "Register" you agree to The Company's' Terms and Conditions
				</p>
				<p>
					While rare, prices are subject to change based on exchange rate fluctuations - 
					should such a fluctuation happen, we may request an additional payment. You have the option to request a full refund or to pay the new price. (Paragraph 13.5.8)
				</p>
				<p>
					Should there be an error in the description or pricing of a product, we will provide you with a full refund (Paragraph 13.5.6)
				</p>
				<p>
					Acceptance of an order by us is dependent on our suppliers ability to provide the product. (Paragraph 13.5.6)
				</p>
				
			</div>
		</div>
	</div>
		</div>
	</section>
</div>