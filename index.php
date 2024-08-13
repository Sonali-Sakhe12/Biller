<?php

session_start();

if (isset($_SESSION["user_id"])) {
    
    $mysqli = require __DIR__ . "/database.php";
    
    $sql = "SELECT * FROM user
            WHERE id = {$_SESSION["user_id"]}";
            
    $result = $mysqli->query($sql);
    
    $user = $result->fetch_assoc();
}

?>
<!DOCTYPE html>
<html>

<head>
  <title>Home</title>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>

<body>


  <?php if (isset($user)): ?>

  <p>Hello
    <?= htmlspecialchars($user["name"]) ?>
  </p>

  <p><a href="logout.php">Log out</a></p>

  <?php else: ?>

  <div class="bg-light py-3 py-md-5">
    <div class="container">
      <div class="row justify-content-md-center">
        <div class="col-12 col-md-11 col-lg-8 col-xl-7 col-xxl-6">
          <div class="bg-white p-4 p-md-5 rounded shadow-sm">
            <div class="row">
              <div class="col-12">
                <div class="text-center mb-5">
                  <img src="5.png" alt="BootstrapBrain Logo" width="175" height="57">
                </div>
              </div>
            </div>

            <ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">
              <li class="nav-item me-2" role="presentation">
                <a class="nav-link active" id="tab-login" data-mdb-toggle="pill" href="login.php" role="tab"
                  aria-controls="pills-login" aria-selected="true">Login</a>
              </li>
              <li class="nav-item" role="presentation">
                <a class="nav-link btn btn-outline-secondary" id="tab-register" data-mdb-toggle="pill" href="signup.html" role="tab" aria-controls="pills-register" aria-selected="false">Register</a>
              </li>
            </ul>

          </div>
        </div>
      </div>
    </div>
  </div>






  <?php endif; ?>



</body>

</html>