<?php

use LDAP\Result;
include 'db_connection.php';
include 'query_db.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polymer Selector</title>
    <link rel="stylesheet" href="./styles/style.css" type="text/css">
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
                <?php
                if ($result = getTable()) displayColumns($result)
                ?>
            </div>
        </form>
    </div>
    <!-- end table filter section -->

    <!-- query output section -->
    <div id="view">
        <?php
        if ($result = getTable()) displayTable($result)
        ?>
    </div>
    <!-- end query output section -->

</body>
<script type="text/javascript" src="./scripts/script.js"></script>
</html>
