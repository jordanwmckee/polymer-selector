<!DOCTYPE html>
<html>

<head>
    <title>Polymer Replacement</title>

    <link rel="stylesheet" href="./css/style.css" type="text/css">
    <?php include '../code/db_connection.php';
    ?>
    <style>
        /*#dropdowns{display: none;}
[id = 'chemical resistance'], #compression, #creep, #electrical, #flexural, [id='glass transition'], #heat, #impact, 
[id='melting points'], #other_properties,[id='physicochemical property'],
[id='polymer names'], [id='refractive index'], #rheological, #shear, [id='solubility parameters solvents'],
[id='solvents and non solvents'], #tensile, #thermal{display: none;}
*/
        [id='chemical resistance'],
        [id='glass transition'],
        [id='melting points'],
        [id='polymer names'],
        [id='refractive index'],
        [id='solubility parameters solvents'],
        [id='solvents and non solvents'] {
            display: none;
        }

        body {
            text-align: justify;
        }
    </style>
</head>


<body>
    <!-- header section -->
    <div id="header">
        <div id="title">
            <h1>Polymer Selector</h1>
            <!-- <img src="../assets/atom.svg" style="width: 20px; height: 20px"/> -->
        </div>
        <div id="nav-list">
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
        <p>To get started, select an attribute</p>
    </div>
    <!-- end page title section -->

    <br>
    <form action="PolymerParameter.php" method="get">
        <label id="dropdowns">Please select parameter and enter value:</label><br>
        <?php
        $conn = OpenCon();
        $result = mysqli_query($conn, "show tables");
        $table = mysqli_fetch_array($result);
        while ($table = mysqli_fetch_array($result)) {
            echo "<div id='$table[0]'>";
            echo "<label id='$table[0]'>$table[0]</label>";
            echo "<input id='$table[0]' name='$table[0]'>";
            echo "<select id='$table[0]' name='$table[0]2'>";
            echo '<option value="" selected>None</option>';
            $sql = "DESCRIBE `$table[0]`";
            $result2 = mysqli_query($conn, $sql);
            $rows = array();
            $row = mysqli_fetch_assoc($result2);
            while ($row = mysqli_fetch_assoc($result2)) {
                $rows[] = $row['Field'];
            }
            foreach ($rows as $value) {
                echo '<option value="' . $value . '">' . $value . '</option>';
            }
            echo "</select> <br></div>";
        }

        CloseCon($conn)
        ?>

        <input type="submit" value="submit">
    </form>
    </div>


</body>

</html>