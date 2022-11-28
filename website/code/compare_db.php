<?php

// assumed url params: 
// localhost/compare.php?polymer1=somepolymer&polymer2=somepolymer&tables[]=sometable&tables[]=sometable...
/*
OG query
    SELECT *
    FROM (SELECT * FROM `heat` WHERE Polymer='poly(acrylonitrile)' OR Polymer='poly(butadiene-co-acrylonitrile)') as t1, 
    (SELECT * FROM `impact` i WHERE Polymer='poly(acrylonitrile)' OR Polymer='poly(butadiene-co-acrylonitrile)') as t2
    WHERE t1.Polymer = t2.Polymer;
*/

/* the best query

SELECT * 
FROM 
(
    SELECT * 
    FROM `heat`
    WHERE Polymer='poly(acrylonitrile)' OR Polymer='poly(butadiene-co-acrylonitrile)'
) t1
NATURAL JOIN
(
    SELECT * 
    FROM `impact` 
    WHERE Polymer='poly(acrylonitrile)' OR Polymer='poly(butadiene-co-acrylonitrile)'
) t2
NATURAL JOIN
(
    SELECT * 
    FROM `electrical`
    WHERE Polymer='poly(acrylonitrile)' OR Polymer='poly(butadiene-co-acrylonitrile)'
) t3

TEST VALUES FOR COMPARE:
poly(acrylonitrile)
poly(butadiene-co-acrylonitrile)
    TABLES:
        heat
        impact
        electrical
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
            if ($i == 0) {
                $sql .= "(SELECT * FROM `$t` WHERE `$tableKey`='$polymer1' OR `$tableKey`='$polymer2') t$i ";
            } else {
                $sql .= " NATURAL JOIN (SELECT * FROM `$t` WHERE `$tableKey`='$polymer1' OR `$tableKey`='$polymer2') t$i";
            }
            $i++;
        }
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
?>