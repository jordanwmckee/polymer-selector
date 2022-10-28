 // add listener to modify url based on table dropdown selection
 var selectedTable = document.getElementById('tables');
 selectedTable.addEventListener('change', function() {
     location.href = `http://localhost?table=${selectedTable.value}`;
 });
 
 // add listener to set selected value in table to current displayed table
 const currentURL = window.location.href;
 const url = new URL(currentURL);
 const currentTable = url.searchParams.get('table');
 selectedTable.value = currentTable;