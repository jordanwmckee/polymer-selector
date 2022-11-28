<!DOCTYPE html>
<html>

<head>
    <title>Polymer Parameter Search</title>
    <style></style>
    <?php include '../code/db_connection.php'; ?>
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
                <li><a href="index.php" data-after="Home">Home</a></li>
                <li><a href="SearchPolyPar.php" data-after="Search">Search</a></li>
                <li><a href="compare.php" data-after="Compare">Compare</a></li>
                <li><a href="SearchPolyReplace.php" data-after="Home">Replacer</a></li>
            </ul>
        </div>
    </div>
    <!-- end header section -->

    <!-- page title sectino -->
    <div id="page-title" style="padding: 50px 0; width: 100%; background-color: #E2d0f3; text-align: center; color: white;">
        <h1>Polymer Search by Parameter</h1>
        <br>
        <a href="SearchPolyPar.php">New search </a>
    </div>
    <!-- end page title section -->

    <?php
    $conn = OpenCon();
    $tables = array();
    $attributes = array();
    $result = mysqli_query($conn, "show tables");
    while ($table = mysqli_fetch_array($result)) {
        if (empty($_GET[$table[0]])) {
        } else {
            array_push($tables, $table[0]);
            array_push($attributes, $_GET[$table[0] . "2"]);
        }
    }

    //Joins tables
    $j = 0;
    $onlinker = "";
    $joinner = "";
    $from = "";
    while ($j < count($tables)) {
        if ($j == 0) {
            if (count($tables) == 1) {
                $from = "`" . $tables[$j] . "`";
            } else {
                $joinner = $joinner . "`" . $tables[$j] . "` JOIN";
                $onlinker = $onlinker . "`" . $tables[$j] . "`.`polymer`=";
            }
        } else {
            if ($j == count($tables) - 1) {
                $joinner = $joinner . "`" . $tables[$j] . "`";
                $onlinker = $onlinker . "`" . $tables[$j] . "`.`polymer`";
                $from = $from . $joinner . "ON" . $onlinker;
            } else {
                $joinner = $joinner . "`" . $tables[$j] . "`";
                $onlinker = $onlinker . "`" . $tables[$j] . "`.`polymer`";
                $from = $from . $joinner . "ON" . $onlinker;

                $joinner = "JOIN";
                $onlinker = "`" . $tables[$j] . "`.`polymer`=";
            }
        }
        $j++;
    }

    //Where 

    $enterval = array();
    $where = "";
    foreach ($tables as $t) {
        array_push($enterval, $_GET[$t]);
    }

    for ($x = 0; $x < count($tables); $x++) {
        if ($x == count($tables) - 1) {
            $where = $where . "`" . $attributes[$x] . "`=" . $enterval[$x];
        } else {
            $where = $where . "`" . $attributes[$x] . "`=" . $enterval[$x] . " AND ";
        }
    }

    //Query
    $sql = "SELECT `$tables[0]`.`polymer` FROM $from WHERE $where;";
    $result2 = mysqli_query($conn, $sql);

    //Get data and display on web page
    if (mysqli_num_rows($result2) > 0) {

        echo "<p name='explain'>Polymers based on parameters entered:</p><br>";
        echo "<ol>";
        while ($row = mysqli_fetch_assoc($result2)) {
            echo "<li>$row[polymer]</li>";
        }
        echo "</ol>";
    } else {
        echo "<p name='explain'>No matching polymers found.</p>";
    }

    //If theres no options, individual prameter searches 
    /*$x=0;
foreach($tables as $t){
    $sql = "SELECT `polymer` FROM $t WHERE $attributes[$x] = $_GET[$t];";
    $result2 = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result2) > 0) {
        
    echo "<p name='explain'>Polymers based on $attributes[$x]:</p><br>";
    echo "<ol>";
    while($row = mysqli_fetch_assoc($result2)){ 
    echo "<li>$row[polymer]</li>";} 
    echo "</ol>";}
    
    else{echo "<p name='explain'>No matching polymers found.</p>";}
    $x++;
}*/

    ?>



</body>

</html>







</body>

</html>