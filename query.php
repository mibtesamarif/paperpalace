<?php
include("adminPanel\html\dbcon.php");
session_start();

// login
if(isset($_POST['login'])){
    $loginEmail  = $_POST['login_email'];
    $loginPassword  = $_POST['login_password'];
    $query = $pdo->prepare("SELECT * FROM users WHERE email = :lEmail AND password = :lPassword");
    $query->bindParam('lEmail',$loginEmail);
    $query->bindParam('lPassword',$loginPassword);
    $query->execute();
    $user = $query->fetch(PDO::FETCH_ASSOC);

    if($user){
        if($user['role_id'] == 1){
            $_SESSION['adminEmail'] = $user['email'];
            $_SESSION['adminName'] = $user['name'];
            echo "<script>alert('login successfully');
            location.assign('adminPanel/html/index.php');</script>";
        }
        if($user['role_id'] == 2){
            $_SESSION['employeeEmail'] = $user['email'];
            $_SESSION['employeeName'] = $user['name'];
            echo "<script>alert('login successfully');
            location.assign('employeePanel/index.php');</script>";
        }
        if($user['role_id'] == 3){
            $_SESSION['userId'] = $user['id'];
            $_SESSION['userEmail'] = $user['email'];
            $_SESSION['userName'] = $user['name'];
            echo "<script>alert('login successfully');
            location.assign('index.php');</script>";
        }
    }
    else{
        echo "<script>alert('wrong login information');</script>";
    }
}

// register
if(isset($_POST['register'])){
    $userName = $_POST['username'];
    $fullName = $_POST['name'];
    $userEmail = $_POST['email'];
    $userPassword = $_POST['password'];
    $homeAddress = $_POST['homeaddress'];
    $phoneNumber = $_POST['phonenumber'];
    $city = $_POST['city'];

    // Check if the email or username already exists in the database
    $checkQuery = $pdo->prepare("SELECT * FROM users WHERE (email = :userEmail OR name = :userName) AND role_id = 3");
    $checkQuery->bindParam(':userEmail', $userEmail);
    $checkQuery->bindParam(':userName', $userName);
    $checkQuery->execute();
    $existingUser = $checkQuery->fetch(PDO::FETCH_ASSOC);




    if($existingUser){
        echo "<script>alert('User already exists.');</script>";
    } else {
        // Proceed with signup if the username and email are not already taken
        $query = $pdo->prepare("INSERT INTO users (name, email, password, role_id) VALUES (:userName, :userEmail, :userPassword, 3)");
        $query->bindParam(':userName', $userName);
        $query->bindParam(':userEmail', $userEmail);
        $query->bindParam(':userPassword', $userPassword);

        if($query->execute()){
            // Insert user information into another table
            $lastInsertedId = $pdo->lastInsertId();
            $userInfoQuery = $pdo->prepare("INSERT INTO users_information (fullName, homeAddress, phoneNumber, city, users_id) VALUES (:fullName, :homeAddress, :phoneNo, :city, :userId)");
            $userInfoQuery->bindParam(':fullName', $fullName);
            $userInfoQuery->bindParam(':homeAddress', $homeAddress);
            $userInfoQuery->bindParam(':city', $city);
            $userInfoQuery->bindParam(':userId', $lastInsertedId);
            $userInfoQuery->bindParam(':phoneNo', $phoneNumber);

            if($userInfoQuery->execute()){
                echo "<script>alert('Register successful! Please log in.')</script>";
            } else {
                echo "<script>alert('Error Register. Please try again.');</script>";
            }
        } else {
            echo "<script>alert('Error Register. Please try again.');</script>";
        }
    }
}

// reset password
if(isset($_POST['resetpassword'])){
    $userName = $_POST['username'];
    $userEmail = $_POST['email'];
    $newPassword = $_POST['password'];

    // Check if the username and email combination exist in the database
    $query = $pdo->prepare("SELECT * FROM users WHERE name = :userName AND email = :userEmail");
    $query->bindParam(':userName', $userName);
    $query->bindParam(':userEmail', $userEmail);
    $query->execute();
    $user = $query->fetch(PDO::FETCH_ASSOC);

    if($user){
        // Update the password for the user
        $updateQuery = $pdo->prepare("UPDATE users SET password = :newPassword WHERE name = :userName AND email = :userEmail");
        $updateQuery->bindParam(':newPassword', $newPassword);
        $updateQuery->bindParam(':userName', $userName);
        $updateQuery->bindParam(':userEmail', $userEmail);
        $updateQuery->execute();

        // Redirect to the login page
        echo "<script>alert('Password changed successfully. Please login with your new password.');
        location.assign('login.php')</script>";
    } else {
        // Display an error message if the username and email combination is incorrect
        echo "<script>alert('Invalid username or email. Please try again.')</script>";
    }
}

// update user information
if(isset($_POST['updateinformation'])){
    $userId = $_GET['id'];
    $userName = $_POST['username'];
    $fullName = $_POST['name'];
    $userEmail = $_POST['email'];
    $userPassword = $_POST['password'];
    $homeAddress = $_POST['homeaddress'];
    $phoneNumber = $_POST['phonenumber'];
    $city = $_POST['city'];

    $updateUserQuery = $pdo->prepare("UPDATE users SET name = :name, email = :email, password = :password WHERE id = :userId");
    $updateUserQuery->bindParam(':name',  $userName);
    $updateUserQuery->bindParam(':email',  $userEmail);
    $updateUserQuery->bindParam(':password',  $userPassword);
    $updateUserQuery->bindParam(':userId', $userId);

    if($updateUserQuery->execute()){
        $updateUserInfoQuery = $pdo->prepare("UPDATE users_information SET fullName = :username, homeAddress = :homeAddress, city = :city, phoneNumber = :phoneNumber WHERE users_id = :userId");
        $updateUserInfoQuery->bindParam(':username',  $fullName);
        $updateUserInfoQuery->bindParam(':homeAddress',  $homeAddress);
        $updateUserInfoQuery->bindParam(':city', $city);
        $updateUserInfoQuery->bindParam(':phoneNumber', $phoneNumber);
        $updateUserInfoQuery->bindParam(':userId', $userId);

        if($updateUserInfoQuery->execute()){
            echo "<script>alert('User information updated successfully');</script>";
        } else {
            echo "<script>alert('Error updating user information');</script>";
        }
    } else {
        echo "<script>alert('Error updating user information');</script>";
    }
}
?>