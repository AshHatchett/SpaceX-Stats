<?php
    require_once("databaseHandler.php");

    include_once("header.php");

    $query = "SELECT id, Rocket, Mission, Pad, Date, Recovery FROM launches";
    $results = mysqli_query($conn, $query);
    $data = mysqli_fetch_all($results);
    $everyRow = mysqli_num_rows($results);

?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Missions</title>
    <link rel="stylesheet" href="missions.css">
</head>
<body>

    <form>
        <input type="text" name="search">
        <button type="submit" name="submit-search">Search</button>
    </form>

    <?php


    foreach ($data as $launch) {

    echo "<div class='mainContainer'>";
        echo "<div class='rocketContainer'>";
        $rocketTag = "SELECT rocketTag FROM launches WHERE id=" . $launch[0];
        $results = mysqli_query($conn, $rocketTag);
        $rocketTag = mysqli_fetch_all($results)[0][0];

            switch ($rocketTag) {
                case "f9":
                    echo "<img src='f9-slc40.jpg' alt='Falcon 9 lifts off from SLC-40' width='100%' height='100%'>";
                    break;
                case "fh":
                    echo "<img src='fh.jpg' alt='Falcon Heavy lifts of from Pad 39A with ArabSat-6A' width='100%' height='100%'>";
                    break;
                case "ss":
                    echo "<img src='ss.jpg' alt='B7 and S24 on awaiting the first Starship integrated launch' width='100%' height='100%'>";
                    break;
                case "f1":
                    echo "<img src='f1.jpg' alt='Falcon 1 lifting off with RazakSat-1 from Omelek Island in the Kwajalein Atoll' width='100%' height='100%'>";
                    break;
            }  
        echo "</div>";

        echo "<div class='rocketInformationContainer'>";

            $results = mysqli_query($conn, $query);

            if ($everyRow > 0) {
                while ($row = mysqli_fetch_assoc($results)) {
                    echo "
                        <p><span class='bold-header'>Rocket:</span>".$row['Rocket']."</p><br>
                        <p><span class='bold-header'>Mission:</span>".$row['Mission']."</p><br>
                        <p><span class='bold-header'>Pad:</span>".$row['Pad']."</p><br>
                        <p><span class='bold-header'>Date:</span>".$row['Date']."</p><br>
                        <p><span class='bold-header'>Recovery:</span>".$row['Recovery']."</p><br>";
                }
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