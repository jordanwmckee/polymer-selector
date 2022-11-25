<?php
include '../code/db_connection.php';
include '../code/query_db.php';

if (isset($_GET['table']) && $_GET['table'] != '') {
    $table = $_GET['table'].trim($table);
} else {
    echo "Unknown table passed.";
    die;
}

try { 
    $table = $_GET['table'];
    $tableKey;
    switch ($table) {
        case 'polymer names':
            $tableKey = 'polymer names';
            break;
        case 'solubility parameters solvents':
            $tableKey = 'solvent';
            break;
        default:
            $tableKey = 'Polymer';
            break;
    }
    $isInsert = true;
    // figure out which statement to use for query (insert vs. update)
    $sql = "INSERT INTO `$table` VALUES (";
    $polymer = $_GET[$tableKey];
    $conn = OpenCon();
    $checkExistence = "SELECT COUNT(*) AS num_rows FROM `$table` WHERE `$tableKey`='$polymer' LIMIT 1;";
    $result = mysqli_query($conn, $checkExistence);
    $row = mysqli_fetch_array($result);
    if($row["num_rows"] > 0){
        $sql = "UPDATE `$table` SET ";
        $isInsert = false;
    }
    $table_columns = getColumnNames($conn, $table);

    foreach($_GET as $key => $value) {
        if (strpos($key, '_') !== FALSE) {
            $key = str_replace("_", " ", $key);
        }

        if (in_array($key, $table_columns)) {
            if ($isInsert) {
                $sql .= "'$value', ";
            } else {
                $sql .= "`$key`='$value', ";
            }
        }
    }
    $sql = rtrim($sql, ', ');
    if ($isInsert) {
        $sql .= ");";
    } else {
        $sql .= " WHERE `$tableKey`='$polymer';";
    }
 
    $result = $conn->query($sql);
    CloseCon($conn);  
} catch (Exception $e) {
    echo 'Caught exception: ',  $e->getMessage(), "\n";
}

header("Location: http://localhost?table=$table");
?>