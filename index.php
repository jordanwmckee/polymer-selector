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

    CloseCon($conn);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polymer Selector</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="header">
        <h1>Polymer Selector</h1>
        <ul></ul> <!-- menu bar or something might go here -->
    </div>
    <div id="config"> <!-- this is where we set up the view by filtering etc -->

    </div>
    <div id="view"> <!-- this is where the results of the queries are formatted into a display -->
        <?php
            // initialize db connection and construct query
            $conn = OpenCon();
            $sql = "SELECT * FROM `physical properties monomers`;";
            $result = $conn->query($sql);
            $all_property = array();  //declare an array for saving property

            //showing property
            echo '<table class="data-table">
                    <tr class="data-heading">';  //initialize table tag
            while ($property = mysqli_fetch_field($result)) {
                echo '<td><strong>' . $property->name . '</strong></td>';  //get field names for header
                $all_property[] = $property->name;  //save those to array
            }
            echo '</tr>'; //end tr tag

            //showing all data
            while ($row = mysqli_fetch_array($result)) {
                echo "<tr>";
                foreach ($all_property as $item) {
                    echo '<td>' . $row[$item] . '</td>'; //get items using property value
                }
                echo '</tr>';
            }
            echo "</table>";

            CloseCon($conn);
        ?>
    </div>
</body>
<style>
    table {
        border-collapse: collapse;
        width: 70%;
    }

    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }

    tr:nth-child(even) {
        background-color: #dddddd;
    }
</style>
</html>
