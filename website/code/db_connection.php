<?php

$GLOBALS['DBHOST'] = '127.0.0.1';
$GLOBALS['DBUSER'] = 'root';
$GLOBALS['DBPASS'] = '';
$GLOBALS['DBNAME'] = 'polymer_selectordb';

//pre: function called assuming sql database exists with given credentials
//post: connection is made to database and returned
function OpenCon() {
   $conn = new mysqli($GLOBALS['DBHOST'], $GLOBALS['DBUSER'], $GLOBALS['DBPASS'], $GLOBALS['DBNAME']) or die("Connect failed: %s\n". $conn -> error); 
   return $conn;
}
 
//pre: function called with valid connection parameters passed
//post: connection to database is closed
function CloseCon($conn) {
   $conn -> close();
}

//pre: site is loaded and this function is called to validate existence of database
//post: if database doesn't exist, create it and populate it, else return
function validateDatabase() {

   try {
      $sql = "CREATE DATABASE IF NOT EXISTS `$GLOBALS[DBNAME]` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;";
      $conn = new mysqli($GLOBALS['DBHOST'], $GLOBALS['DBUSER'], $GLOBALS['DBPASS']) or die("Connect failed: %s\n". $conn -> error);
      mysqli_query($conn, $sql); //create database if not exists
      mysqli_query($conn, "USE `$GLOBALS[DBNAME]`;"); //switch current database to DBNAME

      $sql = "SHOW TABLES;";
      $result = mysqli_query($conn, $sql);

      if(!mysqli_num_rows($result) || mysqli_num_rows($result) == 0) {
         // populate db with queries from sql script
         $query = '';
         $sqlScript = file('../../database/polymers.sql');

         foreach ($sqlScript as $line)	{
               
               $startWith = substr(trim($line), 0 ,2);
               $endWith = substr(trim($line), -1 ,1);
               
               if (empty($line) || $startWith == '--' || $startWith == '/*' || $startWith == '//') {
                  continue;
               }
                  
               $query = $query . $line;
               if ($endWith == ';') {
                  mysqli_query($conn,$query) or die('<div class="error-response sql-import-response">Problem in executing the SQL query <b>' . $query. '</b></div>');
                  $query= '';		
               }
         }
      }
      CloseCon($conn);
   } catch (Exception $e) {
      echo $e->getMessage();
   }
}
   
?>