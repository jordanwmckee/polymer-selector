<?php
// Get current url value
$url = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

//pre: function called to check for existence of table in url params
//post: returns true if table exists in db, else returns false
function checkForTable() {
    try {
        $conn = OpenCon();
        $table = $_GET['table'];
        $val = mysqli_query($conn, "select 1 from `$table` LIMIT 1");
        if ($val) 
            return true;
    } catch (Exception $e) {
        return false;
    }
}

//pre: function called within html form to add options from db
//post: options are created for each table detected in db
function addToDropdown() {
    $conn = OpenCon();
    $result = mysqli_query($conn, "show tables"); 
    while($table = mysqli_fetch_array($result)) {
        echo "<option value='$table[0]'>$table[0]</option>";
    }
    CloseCon($conn);
}

//pre: function called with valid connection data and tablename passed
//post: array containing column names of specified table returned
function getColumnNames($conn, $table) {
    $sql = "DESCRIBE `$table`";
    $result = mysqli_query($conn, $sql);
  
    $rows = array();
    while($row = mysqli_fetch_assoc($result)) {
      $rows[] = $row['Field'];
    }
  
    return $rows;
  }

//pre: function called with url parameter passed
//post: evaluate url param to return appropriate operator for query
function getOperator($value) {
    $operator = substr($value, 1, 2);
    switch ($operator) {
        case "ee":
            return "=";
        case "gt":
            return ">";
        case "lt":
            return "<";
        case "ge":
            return ">=";
        case "le":
            return "<=";
        case "ne":
            return "!=";
        default:
            return null;
    }
}

//pre: function called to parse url and construct query based on results
//post: query is constructed appropriately, and the result of query is returned
function queryTable() {
    $where = " WHERE ";
    $secondClause = FALSE;

    if (isset($_GET['table'])) {
        $table = $_GET['table'];
    }

    if (isset($table) && $table != '') {
        try { 
            $conn = OpenCon();

            $table_columns = getColumnNames($conn, $table);

            // loop through url arguments, check if the key exists
            // as a name in the given table.
            // If so, append to the WHERE clause in the query
            foreach($_GET as $key => $value) {

                // check if key is a name of one of the table columns
                if (in_array($key, $table_columns)) {

                    // get operator from value and remove operator syntax from value
                    $operator = getOperator($value);
                    $value = substr($value, 4);

                    // append to WHERE clause based on url params detected in table
                    if ($secondClause) {
                        $where .= " AND `$key`$operator'$value'";
                    }
                    else {
                        $where .= "`$key`$operator'$value'";
                        $secondClause = TRUE;
                    }
                }
            }
            $where .= ";";

            if ($where == " WHERE ;") {
                $where = ";";
            }   

            $sql = "SELECT * FROM `$table` ".$where;  
            echo $sql; 
            $result = $conn->query($sql);
            CloseCon($conn);    
        } catch (Exception $e) {
            echo 'Caught exception: ',  $e->getMessage(), "\n";
        }
    }
    return $result;
}

//pre: valid query result passed in function call
//post: column names are outputted in html
function displayColumns() {
    $conn = OpenCon();

    if (isset($_GET['table'])) {
        $table = $_GET['table'];
    } else {
        echo "Table not found!\n";
        return;
    }

    $rows = getColumnNames($conn, $table);

    // output 
    echo '<form id="filter-form"><ul>';
    foreach ($rows as $value) {
        echo '<div class="filter-row">
                <li class="col-name">'.$value.'
                    <select class="operator-dd">
                        <option value="[ee]">=</option>
                        <option value="[lt]"><</option>
                        <option value="[gt]">></option>
                        <option value="[le]"><=</option>
                        <option value="[ge]">>=</option>
                        <option value="[ne]">!=</option>
                    </select>
                <input class="filter-value" type="text">
               </li>
            </div>';
    }
    echo '  </ul>
            <button type="button" id="submit-filter">Apply Filters</button>
            <button type="button" id="remove-filter">Remove Filters</button>
        </form>';
}

//pre: valid query results are passed in function call
//post: full query results displayed/outputted in a table in html
function displayTable($result) {
    $all_property = array();  //declare an array for saving property

    //showing property
    echo '<table class="data-table">
            <tr class="data-heading">';  //initialize table tag
    while ($property = mysqli_fetch_field($result)) {
        echo '<td><strong>' . $property->name . '</strong></td>';  //get field names for header
        $all_property[] = $property->name;  //save those to array
    }
    echo '</tr>'; //end tr tag

    //showing all data
    while ($row = mysqli_fetch_array($result)) {
        echo "<tr>";
        foreach ($all_property as $item) {
            echo '<td>' . $row[$item] . '</td>'; //get items using property value
        }
        echo '</tr>';
    }
    echo "</table>";
}

//pre: 
//post: 
function updateTable() {
    $conn = OpenCon();

    if (isset($_GET['table'])) {
        $table = $_GET['table'];
    } else {
        echo "Table not found!\n";
        return;
    }

    $rows = getColumnNames($conn, $table);

    // output
    echo '<div id="update-table>"';
    foreach ($rows as $value) {
        
    }
}



/*
// pre: function called to get url parameters
// post: current url is parsed and all parameters returned as $params
function parseURL() {
   // get url to output table with
   //$url = "http" . (($_SERVER['SERVER_PORT'] == 443) ? "s" : "") . "://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
   $url = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

   // Use parse_url() function to parse the URL and return an associative array which contains its various components
   // url should be http://localhost?table=sometablename
   $url_components = parse_url($url);

   // Use parse_str() function to parse the string passed via URL
   parse_str($url_components['query'], $params);

   return $params;
}
*/

/*
You can also access url query component table with $table = $_GET['table'] 

If the url params are unknown, you can access them by looping through $_GET array
$arguments = array();
foreach( $_GET as $key => $value ) {
    $arguments[$key] = $value
}

for multiple params: https://stackoverflow.com/questions/13763485/is-it-possible-to-create-a-mysql-query-based-on-all-unknown-get-parameters-o
*/

/*
// if key contains '_', replace it with a space
if (strpos($key, '_') !== FALSE) {
    $key = str_replace("_", " ", $key);
}
*/

?>