<?php
include("query.php"); 
include("header.php");
?>

  
  <!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Register</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Register</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->
  
  <!--================Login Box Area =================-->
	<section class="login_box_area section-margin">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<div class="hover">
							<h4>Already have an account?</h4>
							<p>There are advances being made in science and technology everyday, and a good example of this is the</p>
							<a class="button button-account" href="login.php">Login Now</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner register_form_inner">
						<h3>Create an account</h3>
						<form class="row login_form" action="" id="register_form" method="post" >
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="username" maxlength="20" name="username" placeholder="User Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'User name'" required>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="name" maxlength="20" name="name" placeholder="Full Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Full name'" required>
							</div>
							<div class="col-md-12 form-group">
								<input type="email" class="form-control" id="email" name="email" maxlength="30" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'" required>
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="password" minlength="8" maxlength="12" name="password" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'" required>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="homeaddress" name="homeaddress" maxlength="30" placeholder="Home Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Home Address'" required>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="phonenumber" minlength="11" maxlength="11" name="phonenumber" placeholder="Phone Number" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone Number'" required>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="city" maxlength="12" name="city" placeholder="City" onfocus="this.placeholder = ''" onblur="this.placeholder = 'City'" required>
							</div>
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" name="register" class="button button-register w-100">Register</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->



	<?php
include("footer.php");
?>
