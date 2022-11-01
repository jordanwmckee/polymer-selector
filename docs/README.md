This is where you'd put non-sensitive client documents. If you have documents
that you'd rather the client never saw, then you should have a completely
separate folder somewhere well outside of this client's folder.

building dockerfile:

docker buildx build --load -t jordanwmckee/polymer-selector -f docs/Dockerfile .


change variables in 'db_connection.php':

$GLOBALS['DBHOST'] = 'db';
$GLOBALS['DBUSER'] = 'root';
$GLOBALS['DBPASS'] = 'pass';
$GLOBALS['DBNAME'] = 'polymer_selectordb';


Docker Help:

https://alysivji.github.io/php-mysql-docker-containers.html
