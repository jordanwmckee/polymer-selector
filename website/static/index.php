<?php

use LDAP\Result;
include '../code/db_connection.php';
include '../code/query_db.php';

$conn = OpenCon();
CloseCon($conn);

// TODO: create a create_db.php script, possibly dockerize application
// phpmyadmin docker image: https://hub.docker.com/r/phpmyadmin/phpmyadmin/

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polymer Selector</title>
    <link rel="stylesheet" href="./css/style.css" type="text/css">
</head>
<body>

    <!-- header section -->
    <div id="header">
        <div class="title">
            <h1>Polymer Selector</h1>
            <!-- <img src="../assets/atom.svg" style="width: 20px; height: 20px"/> -->
        </div>
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
        <form method="post">
            <div id="table-select">
                <label for="polymer-categories">Attributes</label>
                <select id="tables" name="polymer-categories" id="polymer-categories">
                    <option value="" selected>None</option>
                    <option value="basic_info">Basic Info</option>
                    <option value="physical_properties">Physical Properties</option>
                </select>
            </div>
            <div id="column-filter">
                <!-- fill in values here dynamically based on selection from table select -->
                <?php
                if ($result = queryTable()) {
                    echo "<h4>Filter Options</h4>";
                    displayColumns($result);
                }
                ?>
            </div>
        </form>
    </div>
    <!-- end table filter section -->

    <!-- query output section -->
    <div id="view">
        <?php
        if ($result = queryTable()) displayTable($result)
        ?>
    </div>
    <!-- end query output section -->

</body>
<script type="text/javascript" src="./js/script.js"></script>
</html>
