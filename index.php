<?php

use LDAP\Result;
include 'db_connection.php';

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

    <!-- header section -->
    <div id="header">
        <h1>Polymer Selector</h1>
        <div class="nav-list">
            <ul>
                <li><a href="index.php" data-after="View">View</a></li>
                <li><a href="search.php" data-after="Search">Search</a></li>
                <li><a href="compare.php" data-after="Compare">Compare</a></li>
                <li><a href="update.php" data-after="Update">Update</a></li>
            </ul>
        </div>
    </div>
    <!-- end header section -->

    <!-- table filter section -->
    <div id="config">
        <form action="query_table.php" method="post">
            <div id="table-select">
                <label for="polymer-categories">Attributes</label>
                <select id="tables" name="polymer-categories" id="polymer-categories">
                    <option value="" selected>None</option>
                    <option value="physical properties monomers">Physical Properties</option>
                    <option value="chemical">Chemical Properties</option>
                    <option value="other">other</option>
                    <option value="other2">other</option>
                </select>
            </div>
            <div id="column-filter">
                <!-- fill in values here dynamically based on selection from table select -->
            </div>
        </form>
    </div>
    <!-- end table filter section -->

    <!-- query output section -->
    <div id="view">
        <?php
            
            // get url to output table with
            //$url = "http" . (($_SERVER['SERVER_PORT'] == 443) ? "s" : "") . "://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
            $url = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

            // Use parse_url() function to parse the URL and return an associative array which contains its various components
            // url should be http://localhost?table=sometablename
            $url_components = parse_url($url);
            
            // Use parse_str() function to parse the string passed via URL
            parse_str($url_components['query'], $params);
                
            if ($params['table'] != '') {
            try {
                // initialize db connection and construct query
                $conn = OpenCon();
                $sql = "SELECT * FROM `$params[table]`;"; // .$params[table] is result of url parsing
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
            } catch (Exception $e) {
                echo 'Uh oh, ',  $e->getMessage(), "\n";
            }
        }
        ?>
    </div>
    <!-- end query output section -->

    <script>

        // add listener to modify url based on table dropdown selection
        var selectedTable = document.getElementById('tables');
        selectedTable.addEventListener('change', function() {
            location.href = `http://localhost?table=${selectedTable.value}`;
        });
        
        // add listener to set selected value in table to current displayed table
        const currentURL = window.location.href;
        const url = new URL(currentURL);
        const currentTable = url.searchParams.get('table');
        selectedTable.value = currentTable;

    </script>

</body>

<style>
    * {
        margin: 0;
        padding: 0;
    }

    body {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }

    #header {
        text-align: center;
        background-color: crimson;
        width: 100%;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    #header h1 {
        color: white;
        font-family: Arial, Helvetica, sans-serif;
        margin-left: 50px;
    }

    a {
        text-decoration: none;
        color: white;
        font-family: Arial, Helvetica, sans-serif;
        margin-right: 30px;
    }

    ul {
        list-style: none;
        display: flex;
        justify-content: center;
        align-items: center;
        z-index: 1;
    }

    #config {
        display: flex;
        justify-content: center;
        align-content: space-between;
        max-width: 1080px;
        margin: 30px;
    }

    #config div {
        margin-right: 20px;
    }

    #view {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    table {
        border-collapse: collapse;
        width: 70%;
        overflow-x: scroll;
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
