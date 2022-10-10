<?php

use LDAP\Result;

    include 'db_connection.php';
    $conn = OpenCon();

    // test value insert
    /*
    $sql = "INSERT INTO Bars (name, beer, price)
                VALUES ('Joe', 'bud', 5.0);";
    $result = $conn->query($sql);
    */

    // test query
    /*
    $sql = "SELECT * FROM Bars WHERE name='Joe';";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo "name: " . $row["name"]. " - beer: " . $row["beer"]. " - price: " . $row["price"]. "<br>";
        }
    } else {
        echo "0 results";
    }
    */

    echo "Connected Successfully";
    CloseCon($conn);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polymer Selector</title>
    <link rel="stylesheet/css" href="style.css">
</head>
<body>
    <h1>This is the headidng to the page or something</h1>
</body>
</html>