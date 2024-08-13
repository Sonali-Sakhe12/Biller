<?php 
    session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enable/Disable Input Fields</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <style>
        /* Basic styling for the form */
    </style>
</head>

<body>

    <div class="containerr">

        <div class="header">
            <h3>User Profile</h3>
            <p>ID: 60027549468</p>
        </div>

        <div class="main">

            <h6>Upload Image</h6>

            <?php 
                 if(isset($_SESSION['statue']) && $_SESSION != "")
                 { ?>
                    
                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                        <strong>Success</strong><?php echo $_SESSION['statue']; ?>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                   <?php
                    unset($_SESSION['statue']);
                 }
            ?>
           

            <form id="myForm" action="userprofileupload.php" method="POST" enctype="multipart/form-data">
                <!-- upload file -->
                <div class="upload-area" id="upload-area" class="input-containerr">
                    <label for="image-upload">Upload an image</label>
                    <input name="image_file" type="file" id="image-upload" accept="image/*" style="display: none;"
                        disabled>
                    <div class="image-preview-containerr" id="image-preview-containerr" disabled>
                        <img src="#" alt="Image Preview" class="image-preview" id="image-preview" disabled>
                        <button class="delete-btn" onclick="deleteImage()" disabled>X</button>
                    </div>
                </div>

                <!-- edit button -->
                <div class="editbuttons">
                    <button id="toggleButton">Edit<i class="fa-solid fa-pen"></i></button>
                </div>


                <!-- form details -->


                <div class="inputfield details">
                    <label for="">First Name</label>
                    <input class="form-control" name="first_name" type="text" placeholder="First Name" disabled>
                </div>

                <div class="inputfield details">
                    <label for="">Lsat Name</label>
                    <input class="form-control" name="last_name" type="text" placeholder="Last Name" disabled>
                </div>

                <div class="inputfield details">
                    <label for="">Email</label>
                    <input class="form-control" name="email_id" type="email" placeholder="Email" disabled>
                </div>

                <div class="inputfield details">
                    <label for="">Phone No</label>
                    <input type="tel" name="phone_no" maxlength="10" class="form-control" required="required"
                        placeholder="Phone" disabled />
                </div>

                <div class="inputfield address">
                    <label class="supply">Place of Supply</label>

                    <div class="detail">

                        <div class="adddetail">
                            <label for="">City</label>
                            <input class="form-control" name="city_name" type="text" placeholder="City" disabled>
                        </div>

                        <div class="adddetail">
                            <label for="">ZIP/Postal Code</label>
                            <input name="zip_code" type="number" class="zipcode form-control" id="zip"
                                placeholder="Enter Zip code" disabled>
                        </div>

                        <div class="selectoption adddetail">
                            <label for="">State</label>


                            <select id="stateSelect" class="input-containerr form-control" name="statename" disabled>
                                <option value="" class="selectstate form-control">Select State/UT</option>
                                <!-- Options will be dynamically added here using jQuery -->
                            </select>


                        </div>

                        <div class="adddetail">
                            <label for="">GST</label>
                            <input class="form-control" name="gst" type="text" placeholder="GST" disabled>
                        </div>

                    </div>

                    <div class="inputfield adddetail">
                        <label for="">Address</label>
                        <textarea name="address" rows="4" cols="50" class="myTextarea" placeholder="Enter your Address"
                            disabled></textarea>
                    </div>
                    <div class="inputfield adddetail">
                        <label for="">Website URL</label>
                        <input class="form-control" name="website_url" type="text" placeholder="Website URL" disabled>
                    </div>
                </div>

                <button name="savedetails" class="subBtn" type="submit" disabled>Submit</button>

            </form>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous">
    </script>


</body>

</html>