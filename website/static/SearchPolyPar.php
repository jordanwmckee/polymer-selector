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
body{text-align: justify;}
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
                <li><a href="javascript:openDropdown('search-dropdown')" data-after="Search">Search</a></li>
                <li><a href="compare.php" data-after="Compare">Compare</a></li>
                <li><a href="javascript:openDropdown('update-content')" data-after="Update">Update</a></li>
            </ul>
        </div>
    </div>
    <!-- end header section -->

    <!-- page title sectino -->
    <div id="page-title" style="padding: 50px 0; width: 100%; background-color: #E2d0f3; text-align: center; color: white;">
        <h1>Polymer Search by Parameter</h1>
        <br>
        <p>To get started, select an attribute catagory</p>
    </div>
    <!-- end page title section -->


        
<form action="PolymerParameter.php" method="get">
<label> Choose the parameter group(s) of interest.</label><br>

    <input type="checkbox" id="compression1" name="compression">
    <label for="compression">compression</label>
    <input type="checkbox" id="creep1">
    <label for="creep">creep</label>
    <input type="checkbox" id="electrical1">
    <label for="electrical">electrical</label><br>
    <input type="checkbox" id="flexural1">
    <label for="flexural">flexural</label>
    <input type="checkbox" id="heat1">
    <label for="heat">heat</label>
    <input type="checkbox" id="impact1">
    <label for="impact">impact</label><br>
    <input type="checkbox" id="other_properties1">
    <label for="other_properties">physical properties</label>
    <input type="checkbox" id="physiochemical1">
    <label for="physiochemical">physiochemical</label>
    <input type="checkbox" id="rheological1">
    <label for="rheological">rheological</label><br>
    <input type="checkbox" id="shear1">
    <label for="shear">shear</label>
    <input type="checkbox" id="solvents1">
    <label for="solvents">solvents</label>
    <input type="checkbox" id="tensile1">
    <label for="tensile">tensile</label><br>
    <input type="checkbox" id="thermal1">
    <label for="thermal">thermal</label><br>




    
<label id="dropdowns">Please select parameter and enter value:</label><br> 
<?php
$conn = OpenCon();
$result = mysqli_query($conn, "show tables");
$table = mysqli_fetch_array($result);
while($table = mysqli_fetch_array($result)){
    /*echo "<div id='$table[0]'>";*/
    echo "<label id='$table[0]'>$table[0]</label>";
    echo "<input id='$table[0]' name='$table[0]'>";
  echo "<select id='$table[0]' name='$table[0]2'>";
  echo '<option value="" selected>None</option>';
  $sql = "DESCRIBE `$table[0]`";
  $result2 = mysqli_query($conn, $sql);
  $rows = array();
  $row = mysqli_fetch_assoc($result2);
  while($row = mysqli_fetch_assoc($result2)){
    $rows[] = $row['Field'];
    }
  foreach ($rows as $value){
  echo '<option value="'.$value.'">'.$value.'</option>';
  }
  echo "</select> <br></div>";}

CloseCon($conn)
?>

<input  type="submit" value="submit">
</form>
</div>

<script>
  document.getElementById("electrical1").addEventListener("click", myfunction);
  function myfunction() { document.getElementById('compression').style.display = "block";
    document.getElementsById('dropdowns').style.display = "inline"
  }
  document.getElementById("electrical1").addEventListener("click", myfunction);
  function myfunction() { document.getElementById('compression').style.display = "inline";
    document.getElementsById('dropdowns').style.display = "inline"
  }
  document.getElementById("electrical1").addEventListener("click", myfunction);
  function myfunction() { document.getElementById('compression').style.display = "inline";
    document.getElementsById('dropdowns').style.display = "inline"
  }
  document.getElementById("electrical1").addEventListener("click", myfunction);
  function myfunction() { document.getElementById('compression').style.display = "inline";
    document.getElementsById('dropdowns').style.display = "inline"
  }
  document.getElementById("electrical1").addEventListener("click", myfunction);
  function myfunction() { document.getElementById('compression').style.display = "inline";
    document.getElementsById('dropdowns').style.display = "inline"
  }
  document.getElementById("electrical1").addEventListener("click", myfunction);
  function myfunction() { document.getElementById('compression').style.display = "inline";
    document.getElementsById('dropdowns').style.display = "inline"
  }
  document.getElementById("electrical1").addEventListener("click", myfunction);
  function myfunction() { document.getElementById('compression').style.display = "inline";
    document.getElementsById('dropdowns').style.display = "inline"
  }
  document.getElementById("electrical1").addEventListener("click", myfunction);
  function myfunction() { document.getElementById('compression').style.display = "inline";
    document.getElementsById('dropdowns').style.display = "inline"
  }
  document.getElementById("electrical1").addEventListener("click", myfunction);
  function myfunction() { document.getElementById('compression').style.display = "inline";
    document.getElementsById('dropdowns').style.display = "inline"
  }
  document.getElementById("electrical1").addEventListener("click", myfunction);
  function myfunction() { document.getElementById('compression').style.display = "inline";
    document.getElementsById('dropdowns').style.display = "inline"
  }
  document.getElementById("electrical1").addEventListener("click", myfunction);
  function myfunction() { document.getElementById('compression').style.display = "inline";
    document.getElementsById('dropdowns').style.display = "inline"
  }
  document.getElementById("electrical1").addEventListener("click", myfunction);
  function myfunction() { document.getElementById('compression').style.display = "inline";
    document.getElementsById('dropdowns').style.display = "inline"
  }
  document.getElementById("electrical1").addEventListener("click", myfunction);
  function myfunction() { document.getElementById('compression').style.display = "inline";
    document.getElementsById('dropdowns').style.display = "inline"
  }

</script>

</body>
</html>