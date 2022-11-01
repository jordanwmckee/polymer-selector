<?php

if (isset($_GET['table'])) {
    $table = $_GET['table'];
}

/* flow of operations 
    1. parse params from url
    2. check if value passed for primary key already exists in databse
            if exists, operation = UPDATE 
            else, operation = INSERT
    3. fill in passed values to construct complete query
            insert syntax:      INSERT INTO table_name (column1, column2, column3, ...)
                                VALUES (value1, value2, value3, ...);
            update syntax:      UPDATE table_name
                                SET field1 = `somevalue`, field2 = `othervalue`
                                WHERE primaryKeyColumnName = `polymername`;
*/

if (isset($table) && $table != '') {
    try { 
        $conn = OpenCon();

        $keyColumn = "SELECT COLUMN_NAME 
                      FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE 
                      WHERE TABLE_NAME = '$table' 
                      AND CONSTRAINT_NAME = 'PRIMARY';";
        $result = mysqli_query($conn, $keyColumn);
        print_r($result);

        $table_columns = getColumnNames($conn, $table);

        $insert = TRUE;
        //if (polymer_name exists in table) {
            $insert = FALSE;
            $sql = "INSERT INTO `$table` (";
            foreach ($table_columns as $column) {
                $sql .= "`$column`, ";
            }
            $sql .= rtrim($sql, ", ");
            $sql .= ")";
        //else {
            $sql = "UPDATE `$table`";
        //}

        // loop through url arguments, check if the key exists
        // as a name in the given table.
        // If so, append to the WHERE clause in the query
        foreach($_GET as $key => $value) {

            //  if $_GET converts spaces to underscores, convert them back
            if (strpos($key, '_') !== FALSE) {
                $key = str_replace("_", " ", $key);
            }

            // check if key is a name of one of the table columns
            if (in_array($key, $table_columns)) {

                // get operator from value and remove operator syntax from value
                $value = substr($value, 4);

                // append to WHERE clause based on url params detected in table
                if ($secondClause) {
                    $where .= " AND `$key`='$value'";
                }
                else {
                    $where .= "`$key`='$value'";
                    $secondClause = TRUE;
                }
            }
        }
        $where .= ";";

        if ($where == " WHERE ;") {
            $where = ";";
        }   

        $sql = "SELECT * FROM `$table` ".$where;  
        //echo $sql; 
        $result = $conn->query($sql);
        CloseCon($conn);  
        return $result;
    } catch (Exception $e) {
        echo 'Caught exception: ',  $e->getMessage(), "\n";
    }
}

?>