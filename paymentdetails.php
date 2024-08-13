<?php 
    require_once("../include/initialize.php");
?>
<?php 
    $id = 2;
     $sql = "SELECT `INVOICE_NUM_SUFFIX`,`TOTAL`,`INVOICE_DATE`,`DUE_DATE` FROM `tblinvoice` WHERE INVOICE_ID = '$id'";
     
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
    <p>Invoice #<?php echo $row->INVOICE_NUM_SUFFIX; ?></p>
    </div>
    <div class="box">
        <div class="detail">
            <div class="frist">
                <p>Dear Mr. Raj Saini,</p>
            </div>
            <div class="second">
                <p>Thank you for your business. Your invoice can be viewed, printed and downloaded as PDF from the link
                    below. You can also choose to pay it online.</p>
            </div>
        </div>
    </div>

    <div class="innerbox">
        <div class="boddetails">
            <div class="innerhead">
                <p>Invoice Amount</p>
                <h3>₹<?php echo $row->TOTAL; ?></h3>
            </div>
            <div class="invoice-info">
                <div class="row">
                    <span class="label">Invoice No</span>
                    <span class="value">#<?php echo $row->INVOICE_NUM_SUFFIX; ?></span>
                </div>
                <div class="row">
                    <span class="label">Invoice Date</span>
                    <span class="value"><?php echo $row->INVOICE_DATE; ?></span>
                </div>
                <div class="row">
                    <span class="label">Due Date</span>
                    <span class="value"><?php echo $row->DUE_DATE; ?></span>
                </div>
            </div>
            <div class="buttonclass">
                <button class="btn">VIEW INVOICE</button>
                <p>Powered by <a href="#">TsBillingMaster Invoice</a></p>
            </div>
        </div>
       
    </div>



</body>

</html>