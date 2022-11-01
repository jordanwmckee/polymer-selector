<?php

use LDAP\Result;
include '../code/db_connection.php';
include '../code/query_db.php';

validateDatabase();
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
                <li><a href="#update" data-after="Update">Update</a></li>
            </ul>
        </div>
    </div>
    <!-- end header section -->

    <div id="content">
        
        <!-- table filter section -->
        <div id="config">
            <form method="post">
                <div id="table-select">
                    <label for="polymer-categories"><h2>Attributes</h2></label>
                    <select id="tables" name="polymer-categories" id="polymer-categories">
                        <option value="" selected>None</option>
                        <?php
                        addToDropdown();
                        ?>
                    </select>
                </div>
                <div id="column-filter">
                    <!-- fill in values here dynamically based on selection from table select -->
                    <?php
                    if (checkForTable()) {
                        echo '<button type="button" class="collapsible">Filter Table</button><div class="content">';
                        displayColumns();
                        echo '</div>';
                    }
                    ?>
                </div>
            </form>
        </div>
        <!-- end table filter section -->

        <!-- query output section -->
        <div id="view">
            <?php
            if ($result = queryTable()) {
                echo "<h2>Table View</h2><br>";
                echo "<div id='output'>";
                displayTable($result);
                echo "</div>";
            }
            ?>
        </div>
        <!-- end query output section -->

        <br><br>

        <!-- update section -->
        <div id="update">
            <?php
            if (checkForTable()) {
                echo '<h2>Insert/Update Database</h2>';
                updateTable();
            }
            ?>
        </div>
        <!-- end update section -->

    </div>

</body>
<script type="text/javascript" src="./js/script.js"></script>
</html>
