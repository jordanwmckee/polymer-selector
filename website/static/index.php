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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                <li><a href="index.php" data-after="Home">Home</a></li>
                <li><a href="SearchPolyPar.php" data-after="Search">Search</a></li>
                <li><a href="compare.php" data-after="Compare">Compare</a></li>
                <li><a href="SearchPolyReplace.php" data-after="Home">Replacer</a></li>
                <li><a href="javascript:openDropdown('update-content')" data-after="Update">Update</a></li>
            </ul>
        </div>
    </div>
    <!-- end header section -->

    <!-- page title sectino -->
    <div id="page-title" style="padding: 50px 0; width: 100%; background-color: #E2d0f3; text-align: center; color: white;">
        <h1>View & Update Polymer Database</h1>
        <br>
        <p>To get started, select an attribute table</p>
    </div>
    <!-- end page title section -->

    <div id="content">
        
        <!-- table filter section -->
        <div id="config">
            <form class="formm">
                <div id="table-select">
                    <button type="button" class="collapsible">Attributes</button>
                    <div class="content">
                        <select id="tables" name="polymer-categories" id="polymer-categories">
                            <option value="" selected>None</option>
                            <?php
                            addToDropdown();
                            ?>
                        </select>
                    </div>
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
                echo "<button type='button' class='collapsible'>Table View</button>";
                echo "<div id='output' class='content'>";
                displayTable($result);
                echo "</div>";
            }
            ?>
        </div>
        <!-- end query output section -->

        <!-- update section -->
        <div id="update">
            <?php
            if (checkForTable()) {
                echo '<button type="button" class="collapsible" id="update-content">Insert/Update Database</button><div class="content">';
                updateTable();
                echo '</div>';
            }
            ?>
        </div>
        <!-- end update section -->

    </div>

</body>
<script type="text/javascript" src="./js/script.js"></script>
</html>
