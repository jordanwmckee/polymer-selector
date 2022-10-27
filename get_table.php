<?php
            
    // get url to output table with
    //$url = "http" . (($_SERVER['SERVER_PORT'] == 443) ? "s" : "") . "://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    $url = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

    // Use parse_url() function to parse the URL and return an associative array which contains its various components
    // url should be http://localhost?table=sometablename
    $url_components = parse_url($url);
    
    // Use parse_str() function to parse the string passed via URL
    parse_str($url_components['query'], $params);
        
    if ($params['table'] != '') {
        try {
            // initialize db connection and construct query
            $conn = OpenCon();
            $sql = "SELECT * FROM `$params[table]`;"; // .$params[table] is result of url parsing
            $result = $conn->query($sql);
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

            CloseCon($conn);
        } catch (Exception $e) {
            echo 'Uh oh, ',  $e->getMessage(), "\n";
        }
    }
?>