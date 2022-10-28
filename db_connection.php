<?php

//pre: function called assuming sql database exists with given credentials
//post: connection is made to database and returned
function OpenCon() {
   $dbhost = "127.0.0.1";
   $dbuser = "root";
   $dbpass = "";
   $db = "polymer_selectordb";

   $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
   
   return $conn;
}
 
 //pre: function called with valid connection parameters passed
 //post: connection to database is closed
function CloseCon($conn) {
   $conn -> close();
}
   
?>