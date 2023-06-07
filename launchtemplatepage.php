<?php
    require_once("databaseHandler.php");

    include_once("header.php");

    $query = "SELECT Mission FROM launches";
    $results = mysqli_query($conn, $query);
    $data = mysqli_fetch_all($results);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo "Launch"; ?></title>
</head>
<body>

    

</body>
</html>