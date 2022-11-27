<!DOCTYPE html>
<html>
<head>
<title>Polymer Replacement</title>
<style></style>

<?php include '../code/db_connection.php';
?>
</head>


<body>
<form action="PolymerReplacer.php" method="get">
<label> Enter a polymer name ansd select attributes of interest</label>
<input type ="text" id ="polysearch" name ="polysearch" placeholder="e.g. polyethylene">

    <input type="checkbox" id="compression" name="compression">
    <label for="compression">compression</label><br>
    <input type="checkbox" value="creep">
    <label for="creep">creep</label><br>
    <input type="checkbox" value="electrical">
    <label for="electrical">electrical</label><br>
    <input type="checkbox" value="flexural">
    <label for="flexural">flexural</label><br>
    <input type="checkbox" value="heat">
    <label for="heat">heat</label><br>
    <input type="checkbox" value="impact">
    <label for="impact">impact</label><br>
    <input type="checkbox" value="other_properties">
    <label for="other_properties">physical properties</label><br>
    <input type="checkbox" value="physiochemical">
    <label for="physiochemical">physiochemical</label><br>
    <input type="checkbox" value="rheological">
    <label for="rheological">rheological</label><br>
    <input type="checkbox" value="shear">
    <label for="shear">shear</label><br>
    <input type="checkbox" value="solvents">
    <label for="solvents">solvents</label><br>
    <input type="checkbox" value="tensile">
    <label for="tensile">tensile</label><br>
    <input type="checkbox" value="thermal">
    <label for="thermal">thermal</label><br>

<script>
  document.getElementById("catagory").addEventListener("change", myfunction2);
  function myfunction() { alert ("Hello World!");}
</script>

<?php
$conn = OpenCon();
$result = mysqli_query($conn, "show tables");
$table = mysqli_fetch_array($result);
while($table = mysqli_fetch_array($result)){
  echo "<select id='$table[0]' name='$table[0]'>";
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
  echo "</select>";}
CloseCon($conn)
?>
<input type="submit" value="submit">
</form>



</body>
</html>
