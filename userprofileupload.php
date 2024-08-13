<?php 
     
     require "database.php";

    session_start();
     if(isset($_POST['savedetails'])){
        $image = $_FILES['image_file']['name'];

        $fname = $_POST['first_name'];
        $lname = $_POST['last_name'];
        $emailid = $_POST['email_id'];
        $phoneno = $_POST['phone_no'];
        $cityname = $_POST['city_name'];
        $zipcode = $_POST['zip_code'];
        $state = $_POST['statename'];
        $g_st = $_POST['gst'];
        $addres = $_POST['address'];
        $weburl = $_POST['website_url'];

        $query = "INSERT INTO `userdata`(`IMAGE_SOURCE`, `FIRST_NAME`, `LAST_NAME`, `EMAIL_ID`, `PHONE_NO`, `CITY_NAME`, `ZIP_CODE`, `STATE_NAME`, `GST`, `USER_ADDRESS`, `WEBSITE_URL_ID`) VALUES ('$image','$fname','$lname','$emailid','$phoneno','$cityname','$zipcode','$state','$g_st','$addres','$weburl')";

        $result = mysqli_query($conn, $query);

        if($result)
        {
            move_uploaded_file($_FILES["image_file"]["tmp_name"], "image/" . $_FILES["image_file"]["name"]);
            $_SESSION['statue'] = "Document Uploaded";
            // remove loginsuccess on header location when this code use for production
            header("Location: userprofile.php?loginsuccess");
        }
        else{
            $_SESSION['statue'] = "Form not stored";
            header("Location: userprofile.php?loginsuccess");
        }
              
    }

?>