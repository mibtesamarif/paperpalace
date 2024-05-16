<?php
include("query.php");
include("header.php");

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $query = $pdo->prepare("SELECT users.*, users_information.* FROM users INNER JOIN users_information ON users.id = users_information.users_id WHERE users.id = :uId");
    $query->bindParam(':uId', $id);
    $query->execute();
    $user = $query->fetch(PDO::FETCH_ASSOC);
    // print_r($user);
}
?>

 <!-- ================ start banner area ================= -->	
 <section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Account Setting</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.php">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Account Setting</li>
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
				<div class="col-lg-12">
					<div class="login_form_inner register_form_inner">
						<h3>Update Account Information</h3>
						<form class="row login_form" action="" id="register_form" method="post" >
							<div class="col-md-12 form-group">
								<input type="text" value="<?php echo $user['name'] ?>" class="form-control" id="username" maxlength="20" name="username" >
							</div>
							<div class="col-md-12 form-group">
								<input type="text" value="<?php echo $user['fullName'] ?>" class="form-control" id="name" maxlength="20" name="name" >
							</div>
							<div class="col-md-12 form-group">
								<input type="email" value="<?php echo $user['email'] ?>" class="form-control" id="email" name="email" maxlength="30" >
							</div>
							<div class="col-md-12 form-group">
								<input type="password" value="<?php echo $user['password'] ?>" class="form-control" id="password" minlength="8" maxlength="12" name="password" >
							</div>
							<div class="col-md-12 form-group">
								<input type="text" value="<?php echo $user['homeAddress'] ?>" class="form-control" id="homeaddress" name="homeaddress" maxlength="30" >
							</div>
							<div class="col-md-12 form-group">
								<input type="text" value="<?php echo $user['phoneNumber'] ?>" class="form-control" id="phonenumber" minlength="11" maxlength="11" name="phonenumber" >
							</div>
							<div class="col-md-12 form-group">
								<input type="text" value="<?php echo $user['city'] ?>" class="form-control" id="city" maxlength="12" name="city">
							</div>
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" name="updateinformation" class="button button-register w-100">Update</button>
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