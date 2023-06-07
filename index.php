<?php
    require_once("databaseHandler.php");

    include_once("header.php");

    $query = "SELECT Rocket, Mission, Pad, Date, Recovery FROM launches";
    $results = mysqli_query($conn, $query);
    $data = mysqli_fetch_all($results);

?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SpaceX Stats</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>

    <?php

    foreach ($data as $launch) {
    
    echo "<div class='mainContainer'>";
        echo "<div class='rocketContainer'>";
            echo "<img src='f9-slc40.jpg' alt='Falcon 9 Lifts Off From SLC-40' width='100%' height='100%'>";
        echo "</div>";
        echo "<div class='rocketInformationContainer'>";
            
            foreach ($launch as $key => $rocketInfoValue) {
                switch ($key) {
                    case 0:
                        echo "<div class=info-rocket>";
                        echo "<span class='bold-header'>Rocket:</span> " . $rocketInfoValue;
                        echo "</div>";
                        break;
                    case 1:
                        echo "<div class=info-rocket>";
                        echo "<span class='bold-header'>Mission:</span> " . $rocketInfoValue;
                        echo "</div>";
                        break;
                    case 2:
                        echo "<div class=info-rocket>";
                        echo "<span class='bold-header'>Pad:</span> " . $rocketInfoValue;
                        echo "</div>";
                        break; 
                    case 3:
                        echo "<div class=info-rocket>";
                        echo "<span class='bold-header'>Date:</span> " . $rocketInfoValue;
                        echo "</div>";
                        break;
                    case 4:
                        echo "<div class=info-rocket>";
                        echo "<span class='bold-header'>Recovery:</span> " . $rocketInfoValue;
                        echo "</div>";
                        break; 
                }
                
                echo "<br>";
            }
        
            echo "</div>";
        echo "<div class='rocketButtonContainer'>";
            echo "<a href='launchtemplatepage.php' class='moreButton'>More</a>";
        echo "</div>";
    echo "</div>";

    }

    ?>

</body>
</html>