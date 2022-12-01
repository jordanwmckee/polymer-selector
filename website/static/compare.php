<?php
use LDAP\Result;
include '../code/db_connection.php';
include '../code/query_db.php';
include '../code/compare_db.php';

validateDatabase();


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polymer Selector</title>
    <link rel="stylesheet" href="./css/compare.css" type="text/css">
    <link rel="stylesheet" href="./css/style.css" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.rawgit.com/harvesthq/chosen/gh-pages/chosen.jquery.min.js"></script>
    <link href="https://cdn.rawgit.com/harvesthq/chosen/gh-pages/chosen.min.css" rel="stylesheet"/>
</head>
<body>

    <!-- header section -->
    <?php include '../assets/header.html'; ?>
    <!-- end header section -->

    <!-- page title sectino -->
    <div id="page-title" style="padding: 50px 0; width: 100%; background-color: #E2d0f3; text-align: center; color: white;">
        <h1>Compare Polymers</h1>
        <br>
        <p>To get started, type in two polymers and select the tables you would like to compare attributes with</p>
    </div>
    <!-- end page title section -->
    
    <br>
    <div id="contents">
        
        <!-- config section -->
        <div id="config">
            <h3>Name & Table Selections</h3>
            <form action="">
                <!-- polymer input -->
                <div class="search-container">
                    <input id="polymer1" type="text" placeholder="Polymer 1">
                    <input id="polymer2" type="text" placeholder="Polymer 2">
                </div>
                <!-- table selection -->
                <div id="tables">
                    <label for="table-select">Tables to Compare</label>
                    <select data-placeholder="Begin typing to filter..." multiple class="chosen-select">
                        <?php
                        addToDropdown();
                        ?>
                    </select>
                    <button type="button" id="all">Select All</button>
                    <button type="button" id="none">Deselect All</button>
                </div>
                <button type="button" id="apply-filters">Apply Filters</button>
            </form>
        </div>
        <!-- end config section -->

        <!-- query output section -->
        <div id="display">
            <?php
            if ($result = queryComparison()) { displayTable($result); }
            ?>
        </div>
        <!-- end query output section -->
    </div>
    
</body>
<script type="text/javascript" src="./js/compare.js"></script>
</html>