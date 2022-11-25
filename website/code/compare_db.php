<?php

// assumed url params: 
// localhost/compare.php?polymer1=somepolymer&polymer2=somepolymer&tables[]=sometable&tables[]=sometable...
/*
OG query
    SELECT *
    FROM (SELECT * FROM `heat` WHERE Polymer='poly(acrylonitrile)' OR Polymer='poly(butadiene-co-acrylonitrile)') as t1, 
    (SELECT * FROM `impact` i WHERE Polymer='poly(acrylonitrile)' OR Polymer='poly(butadiene-co-acrylonitrile)') as t2
    WHERE t1.Polymer = t2.Polymer;

same results as OG
    SELECT * 
    FROM `heat` t1
    WHERE Polymer='poly(acrylonitrile)' OR Polymer='poly(butadiene-co-acrylonitrile)'
    FULL OUTER JOIN
    (
    SELECT * 
    FROM `impact` 
    WHERE Polymer='poly(acrylonitrile)' OR Polymer='poly(butadiene-co-acrylonitrile)'
    ) t2
    ON t1.Polymer = t2.Polymer;

same results as OG
    SELECT * FROM 
    (
        SELECT * 
        FROM `heat`
        WHERE Polymer='poly(acrylonitrile)' OR Polymer='poly(butadiene-co-acrylonitrile)'
    ) t1
    CROSS JOIN
    (
    SELECT * 
    FROM `impact` 
    WHERE Polymer='poly(acrylonitrile)' OR Polymer='poly(butadiene-co-acrylonitrile)'
    ) t2
    ON t1.Polymer = t2.Polymer;
*/

/* THE query 

SELECT *
FROM 
(
    SELECT * 
	FROM `heat`
	WHERE Polymer='poly(acrylonitrile)' OR Polymer='poly(butadiene-co-acrylonitrile)'
) t1
 LEFT JOIN 
 (
	SELECT * 
  	FROM `impact` 
  	WHERE Polymer='poly(acrylonitrile)' OR Polymer='poly(butadiene-co-acrylonitrile)'
 ) t2 ON t2.Polymer = t1.Polymer
UNION
SELECT *
FROM 
(
    SELECT * 
    FROM `heat`
    WHERE Polymer='poly(acrylonitrile)' OR Polymer='poly(butadiene-co-acrylonitrile)'
) t1
RIGHT JOIN 
(
	SELECT * 
  	FROM `impact` 
  	WHERE Polymer='poly(acrylonitrile)' OR Polymer='poly(butadiene-co-acrylonitrile)'
) t2 
ON t2.Polymer = t1.Polymer

*/

//pre: function called with table name passed in
//post: the name of the key for the table is returned
function getHeader($t) {
    switch ($t) {
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
    return $tableKey;
}

//pre: function called to query db for two polymers and n tables
//post: query is constructed and executed based on url params
function queryComparison() {
    $conn = OpenCon();
    try {
        $polymer1 = $_GET['polymer1'];
        $polymer2 = $_GET['polymer2'];
        $tables = $_GET['tables'];
        $sql = "SELECT * FROM ";
        $i = 0;
        foreach ($tables as $t) {
            $tableKey = getHeader($t);
            $sql .= "(SELECT * FROM `$t` WHERE `$tableKey`='$polymer1' OR `$tableKey`='$polymer2') as t$i, ";
            $i++;
        }
        $sql = rtrim($sql, ', ');
        $sql .= " WHERE ";
        $i2 = 0;
        $t0 = "";
        foreach ($tables as $t) {
            $tableKey = getHeader($t);
            if ($t0 == "") {
                $t0 = "t$i2.$tableKey";
            } else {
                $sql .= "$t0=t$i2.$tableKey AND ";
            }
            $i2++;
        }
        $sql = rtrim($sql, ' AND ');
        $sql .= ";";

        //echo $sql;

        $result = $conn->query($sql);
    } catch (Exception $e) {
        //echo 'Caught exception: ',  $e->getMessage(), "\n";
        if ($_GET) {
            echo "Invalid Polymer name, or Polymer doesn't exist in selected tables..";
        }
    }
    CloseCon($conn);
    return $result;
}

/*
$firstTable = true;
        foreach ($tables as $t) {
            $tableKey = getHeader($t);
            $rows = getColumnNames($conn, $t);
            $sql .= "(SELECT ";
            $counter = 0;
            foreach ($rows as $row) {
                if ($counter == 0 && $firstTable == false) {
                    $counter++;
                    continue;
                }
                $sql .= "`$row`, ";
                $firstTable = false;
            }
            $sql = rtrim($sql, ', ');
            $sql .= " FROM `$t` WHERE `$tableKey`='$polymer1' OR `$tableKey`='$polymer2') as t$i, ";
            $i++;
        }
*/
?>