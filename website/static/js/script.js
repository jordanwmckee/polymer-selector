 // add listener to modify url based on table dropdown selection
 var selectedTable = document.getElementById('tables');
 selectedTable.addEventListener('change', function() {
     location.href = `http://localhost?table=${selectedTable.value}`;
     //window.history.replaceState(null, null, "?arg=123"); << for updating url without refresh
 });
 
 // add listener to set selected value in table to current displayed table
 const currentURL = window.location.href;
 const url = new URL(currentURL);
 const currentTable = url.searchParams.get('table');
 selectedTable.value = currentTable;

 // TODO: add function to grab values from filter boxes and append to url upon form submission
 function filterTable(element) {
    
 }