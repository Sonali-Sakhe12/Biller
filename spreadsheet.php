

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Spreadsheet Invoice</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="spreadsheet.css">
</head>

<body>

        <?php 
             require "button.php";
        ?>

    <div class="container">
        <div class="start1">
            <div class="images">
                <img src="icon.png" alt="logo page">
                <div class="box">
                    <h3>Hash Code</h3>
                    <p>Maharashtra</p>
                    <p>India</p>
                    <p>palaash.sarkar@gmail.com</p>
                    <p>GSTIN: 27EIAPS2086G1Z2</p>
                </div>
            </div>
            <div class="boxes">
                <div class="boxsize">
                    <h2>TAX INVOICE</h2>
                </div>
            </div>
        </div>



        <div class="boxinvoicedate">
            <div class="start2">
                <div class="box detail">
                    <h6 class="textcolor">#</h6>
                    <h6 class="textcolor">Invoice Date</h6>
                    <h6 class="textcolor">Terms</h6>
                    <h6 class="textcolor">Due Date</h6>
                    <h6 class="textcolor">P.O.#</h6>
                </div>
                <div class="details-gap">
                    <div class="column">
                        <h6>: INV-17</h6>
                        <h6>: 26/02/2024</h6>
                        <h6>: Due On Receipt</h6>
                        <h6>: 26/02/2024</h6>
                        <h6>: SO-17</h6>
                    </div>
                </div>
            </div>
            <div class="start3">
                <div class="box detail">
                    <h6 class="textcolor">Place Of Supply</h6>
                </div>
                <div class="details-gap">
                    <div class="column">
                        <h6>: Tamil Nadu (33)</h6>
                    </div>
                </div>
               
            </div>
        </div>

        <div class="start4">
            <div class="box1">
                <div>
                    <h5>Rob & Joe Traders</h5>
                    <h6>34, Riche Street</h6>
                    <h6>Chennai</h6>
                    <h6>631603 Tamil Nadu</h6>
                    <h6>India</h6>
                    <h6>GSTIN 33GSPTN0372G1ZC</h6>
                </div>
            </div>
            <div class="box2">
                <div class="richesweet">
                    <h6>34, Riche Street</h6>
                    <h6>Chennai</h6>
                    <h6>631603 Tamil Nadu</h6>
                    <h6>India</h6>
                    <h6>GSTIN 33GSPTN0372G1ZC</h6>
                </div>
            </div>
        </div>

        <table class="start5">
            <thead class="tablehead">
                <tr>
                    <th scope="col" rowspan="2" class="gradient">#</th>
                    <th scope="col" rowspan="2" class="gradient">Description</th>
                    <th scope="col" rowspan="2" class="gradient">HSN/SAC</th>
                    <th scope="col" rowspan="2" class="gradient">Qty</th>
                    <th scope="col" rowspan="2" class="gradient">Rate</th>
                    <th scope="col" rowspan="2" class=" gradient">Discount</th>
                    <th scope="col" colspan="2" class=" gradient">CGST</th>
                    <th scope="col" colspan="2" class=" gradient">SGST</th>
                    <th scope="col" rowspan="2" class=" gradient">Amount</th>
                </tr>
                <tr>
                    <td class="gradient">%</td>
                    <td class="gradient">Amt</td>
                    <td class="gradient">%</td>
                    <td class="gradient">Amt</td>
                </tr>
            </thead>
            <tbody class="tablebody">
                <tr class="border-2">
                    <th scope="row" class="tabledata">1</th>
                    <td>
                        <h6>Brochure Design</h6>
                        <p class="para">Brochure Design Single
                            Sided Color</p>
                    </td>
                    <td>52161559</td>
                    <td>
                        <p>1.00</p>
                        <p>Nos</p>
                    </td>
                    <td>300.00</td>
                    <td>0.00</td>
                    <td>12%</td>
                    <td>18.00</td>
                    <td>12%</td>
                    <td>18.00</td>
                    <td>300.00</td>
                </tr>
                <tr class="border-2">
                    <th scope="row" class="tabledata">2</th>
                    <td width="20%">
                        <h6>Web Design Packages
                            (Template) - Basic</h6>
                        <p class="para">Custom Themes for your
                            business. Inclusive of 10
                            hours of marketing and
                            annual training</p>
                    </td>
                    <td>52161559</td>
                    <td>
                        <p>1.00</p>
                        <p>Nos</p>
                    </td>
                    <td>250.00</td>
                    <td>0.00</td>
                    <td>12%</td>
                    <td>15.00</td>
                    <td>12%</td>
                    <td>15.00</td>
                    <td>250.00</td>
                </tr>
                <tr class="border-2">
                    <th scope="row" class="tabledata">3</th>
                    <td>
                        <h6>Print Ad - Basic - Color</h6>
                        <p class="para">Print Ad 1/8 size Color</p>
                    </td>
                    <td>52161559</td>
                    <td>
                        <p>1.00</p>
                        <p>Nos</p>
                    </td>
                    <td>80.00</td>
                    <td>0.00</td>
                    <td>12%</td>
                    <td>4.80</td>
                    <td>12%</td>
                    <td>4.80</td>
                    <td>80.00</td>
                </tr>
            </tbody>
        </table>

        <div class="start6">
            <div class="footer1">
                <h5>Total in Words</h5>
                <p class="itlaic">Indian Rupee Seven Hundred Five and Sixty Paise Only</p>
                <p class="response">Thanks for your business</p>
                <p class="payment">Payment Options <button class="btn"><i class="fa-brands fa-paypal"></i> &nbsp; &nbsp; |
                        &nbsp; &nbsp;<i class=""></i></button></p>
                <p class="footerdesc">Your company's Terms and Conditions will be displayed here. You can
                    add it in the Invoice Preferences page under Settings. </p>
            </div>
            <div class="footer2">
                <div class="subtotal">
                    <div class="endboxright1">
                        <h6 class="textcolor">Sub Total </h6>
                        <h6 class="textcolor">Discount</h6>
                        <h6 class="textcolor">CGST (12.00%)</h6>
                        <h6 class="textcolor">SGST (12.00%)</h6>
                        <h6 class="textcolor fw-bold">Total </h6>
                        <h6 class="textcolor">Payment Made</h6>
                        <h6 class="textcolor fw-bold">Balance Due</h6>
                    </div>
                    <div class="endboxright2">
                        <h6 class="textcolor">630</h6>
                        <h6 class="textcolor">0.00</h6>
                        <h6 class="textcolor">37.80</h6>
                        <h6 class="textcolor">37.80</h6>
                        <h6 class="textcolor fw-bold">₹705.60</h6>
                        <h6 class="text-success">(-) 100.00</h6>
                        <h6 class="textcolor fw-bold">₹605.60</h6>
                    </div>
                </div>
                
            </div>
        </div>

    </div>
        <footer>
        <img src="5.png" alt="" id="footimage" style="width:140px;height:53px;">
        </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous">
    </script>
        <script>
            
        </script>
</body>

</html>