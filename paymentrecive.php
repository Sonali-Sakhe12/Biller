<?php 
    require_once("../include/initialize.php");
?>
<?php 
    $id = 1;
     $sql = "SELECT `AMOUNT`,`INVOICE_NUM_SUFFIX`,`PAYMENT_DATE` FROM `tbpayment` WHERE INVOICE_ID = '$id'";
     
     $mydb->setQuery($sql);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="paymentsc.css">
</head>
<body>
    <div class="image">
        <img src="1.png">
    </div>
    <div class="header">
    <?php 
    
    $row = $mydb->loadSingleResult();
    
    ?>
        <p>Payment Received</p>
    </div>
    <div class="box">
        <div class="detail">
            <div class="frist">
                <p>Dear Mr. Raj Saini,</p>
            </div>
            <div class="second">
                <p>Thank you for your payment. It was a pleasure doing business with you. We look forward to work together again!</p>
            </div>
        </div>
    </div>

    <div class="innerbox">
        <div class="boddetails">
            <div class="innerhead">
                <p>Payment Received</p>
                <h3 class="success"><?php echo $row->AMOUNT; ?></h3>
            </div>
            <div class="invoice-info">
                <div class="row">
                    <span class="label">Invoice No</span>
                    <span class="value">#<?php echo $row->INVOICE_NUM_SUFFIX; ?></span>
                </div>
                <div class="row">
                    <span class="label">Payment Date</span>
                    <span class="value"><?php echo $row->PAYMENT_DATE; ?></span>
                </div>
        </div>
    </div>

