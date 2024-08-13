<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>buttons</title>
</head>
    <style>
        .buttons button {
            padding: 5px 20px;
            cursor: pointer;
            background-color: rgb(174, 174, 236);
            outline: none;
            border: none;
            border-radius: 5px;
            margin-right: 20px;
        }

        .contain {
            display: flex;
        }

        select {
           
            background-color: white;
            border: 1px solid blue;
            border-radius: 4px;
            display: inline-block;
            font: inherit;
            line-height: 1.5em;
            padding: 4px 10px;

            margin: 0;
            --webkit-box-sizing: border-box;
            --moz-box-sizing: border-box;
            box-sizing: border-box;
            --webkit-appearance: none;
            --moz-appearance: none;
        }

        select > .option {
            background-image:
                linear-gradient(45deg, transparent 50%, blue 50%),
                linear-gradient(135deg, blue 50%, transparent 50%),
                linear-gradient(to right, skyblue, skyblue);
            background-position:
                calc(100% - 20px) calc(1em + 2px),
                calc(100% - 15px) calc(1em + 2px),
                100% 0;
            background-size:
                5px 5px,
                5px 5px,
                2.5em 2.5em;
            background-repeat: no-repeat;
        }

        select > .option:focus {
            background-image:
                linear-gradient(45deg, white 50%, transparent 50%),
                linear-gradient(135deg, transparent 50%, white 50%),
                linear-gradient(to right, gray, gray);
            background-position: calc(100% - 15px) 1em, calc(100% - 20px) 1em, 100% 0;
            background-size: 5px 5px, 5px 5px, 2.5em 2.5em;
            background-repeat: no-repeat;
            border-color: grey;
            outline: 0;
        }
    </style>
    <script>
        function getPrint(){
            window.print();
        }
    </script>
</head>

<body>
    <div class="contain">
        <div class="buttons">
            <button>back</button>
            <button onclick="getPrint()">Print</button>
        </div>
        <div class="option">
            <select name="format" id="" size="1" onchange="window.location.href=this.value;">
                <option value="">Select Format</option>
                <option value="standard.php">Standard</option>
                <option value="spreadsheet.php">Spreadsheet</option>
            </select>
        </div>
    </div>
    
</body>

</html>