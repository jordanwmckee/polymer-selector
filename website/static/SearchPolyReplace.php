<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Polymer Replacement</title>
	<style>
		[id='chemical resistance'],
		[id='glass transition'],
		[id='melting points'],
		[id='polymer names'],
		[id='refractive index'],
		[id='solubility parameters solvents'],
		[id='solvents and non solvents'] {
			display: none;
		}

		body {
			text-align: justify;
		}
	</style>
	<link rel="stylesheet" href="./css/style.css" type="text/css">
	<?php include '../code/db_connection.php'; ?>
	<link rel="stylesheet" href="./css/style.css" type="text/css">
</head>

<body>
	<!-- header section -->
	<div id="header">
		<div class="title">
			<h1>Polymer Selector</h1>
			<!-- <img src="../assets/atom.svg" style="width: 20px; height: 20px"/> -->
		</div>
		<div class="nav-list">
			<ul>
				<li><a href="index.php" data-after="Home">Home</a></li>
				<li><a href="SearchPolyPar.php" data-after="Search">Search</a></li>
				<li><a href="compare.php" data-after="Compare">Compare</a></li>
				<li><a href="SearchPolyReplace.php" data-after="Home">Replacer</a></li>
			</ul>
		</div>
	</div>
	<!-- end header section -->

	<!-- page title sectino -->
	<div id="page-title" style="padding: 50px 0; width: 100%; background-color: #E2d0f3; text-align: center; color: white;">
		<h1>Polymer Replacement Tool</h1>
		<br>
		<p>To get started, select an attribute catagory</p>
	</div>
	<!-- end page title section -->

	<br>
	<form action="PolymerReplacer.php" method="get">
		<label> Enter a polymer name and select attributes of interest</label>
		<input type="text" id="polysearch" name="polysearch" placeholder="e.g. polyethylene"><br>
		<script>
			document.getElementById("catagory").addEventListener("change", myfunction2);

			function myfunction() {
				alert("Hello World!");
			}
		</script>

		<?php
		$conn = OpenCon();
		$result = mysqli_query($conn, "show tables");
		$table = mysqli_fetch_array($result);
		while ($table = mysqli_fetch_array($result)) {
			echo "<div id='$table[0]'>";
			echo "<select id='$table[0]' name='$table[0]'>";
			echo '<option value="" selected>None</option>';
			$sql = "DESCRIBE `$table[0]`";
			$result2 = mysqli_query($conn, $sql);
			$rows = array();
			$row = mysqli_fetch_assoc($result2);
			while ($row = mysqli_fetch_assoc($result2)) {
				$rows[] = $row['Field'];
			}
			foreach ($rows as $value) {
				echo '<option value="' . $value . '">' . $value . '</option>';
			}
			echo "</select><br></div>";
		}
		CloseCon($conn)
		?>
		<input type="submit" value="submit">
	</form>

</body>

</html>