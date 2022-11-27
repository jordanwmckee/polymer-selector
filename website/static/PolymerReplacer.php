<!DOCTYPE html>
<html>
<head>
<title>Polymer ReplacementV2</title>
<style></style>
<?php include '../code/db_connection.php';?>
</head>
<body>

<?php 
$conn = OpenCon();
//Typed in polymer
$polymer = $_GET["polysearch"];
$sql = "SELECT `polymer` FROM `polymer names` WHERE `polymer`= '$polymer' ;";
$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0) {
  while($row = mysqli_fetch_assoc($result)) {
    $polymer = $row["polymer"]; 
} 
} else {}

// Polymer tables and attributes 
$qtable = array();
$attribute_list = array();
$result = mysqli_query($conn, "show tables");
while($table = mysqli_fetch_array($result)){
if(empty($_GET[$table[0]])){}
else{
    array_push($qtable, $table[0]);
    array_push($attribute_list, $_GET[$table[0]]);
}}
 
//From statement
$j=0;
$onlinker="";
$joinner="";
$from="";
while($j < count($qtable)){
    if($j == 0){
        if (count($qtable) == 1){$from = "`".$qtable[$j]."`";}
        else{ $joinner = $joinner."`".$qtable[$j]."` JOIN";
        $onlinker = $onlinker."`".$qtable[$j]."`.`polymer`=";}
    }
    else{if($j == count($qtable)-1){ $joinner = $joinner."`".$qtable[$j]."`";
        $onlinker = $onlinker."`".$qtable[$j]."`.`polymer`";
        $from = $from.$joinner."ON".$onlinker;}
        
        else{ $joinner = $joinner."`".$qtable[$j]."`";
        $onlinker = $onlinker."`".$qtable[$j]."`.`polymer`";
        $from = $from.$joinner."ON".$onlinker;
        
        $joinner = "JOIN";
        $onlinker = "`".$qtable[$j]."`.`polymer`=";}
       

    }
$j++;}

// Attributes for query 
$attributes=""; $x = 0;
while ( $x < count($attribute_list) ) {
    if ($x == (count($attribute_list)-1)){
        $attributes = $attributes."`".$attribute_list[$x]."`";}
    else { $attributes = $attributes."`".$attribute_list[$x]."`,";
} $x++;}



// Query to get info of polymer of interest
$format = "SELECT %s FROM %s WHERE `%s`.`polymer` = '$polymer' ;";
$sql = sprintf($format,$attributes,$from,$qtable[0]);
$result2 = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result2); 

$outout=array();


//if 0 then what ?
for($z = 0; $z< count($qtable); $z++){ 
    $outerarray=array();
    $above = $row[$attribute_list[$z]]*1.1; $below = $row[$attribute_list[$z]]*.9;
    $sql2 = "SELECT `polymer`,`$attribute_list[$z]` FROM `$qtable[$z]` WHERE `$attribute_list[$z]` BETWEEN $below and $above;";
    $result3 = mysqli_query($conn, $sql2);
    while($row2 = mysqli_fetch_assoc($result3)){
    $val = abs($row[$attribute_list[$z]]-$row2[$attribute_list[$z]]);    
    $innerarray=array();
    $polymer = trim($polymer);

    if($row2['polymer'] == $polymer){}
    else{
    array_push($innerarray,$row2['polymer'],$row2[$attribute_list[$z]],$val);
    array_push($outerarray,$innerarray);
    }
} array_push($outout,$outerarray);    
}
?>

<table> 
    <caption>Polymer replacement options for 
            <?php echo $polymer; ?>
    </caption>
    <tr>
        
        <?php 
        echo "<th>Rank</th>"; 
        foreach($attribute_list as $al){  
        echo "<th>$al</th>";}
        ?>




    </tr>

<?php
/*foreach($outout as $oo){
array_multisort($oo[],SORT_NUMERIC,SORT_ASC);}*/
for($h=0; $h < 5; $h++){
    echo "<tr>";
    echo "<td>".$h+1 . "</td>";
    foreach($outout as $out){   
    if(isset($out[$h][0])){echo "<td>".$out[$h][0]."</td>";
    }
    else{echo "<td></td>";}}
    echo "</tr>";}
?>


</body>
</html>
