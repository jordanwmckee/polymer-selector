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

// add event listener to remove filters when button clicked
if (document.getElementById('remove-filter') != null) {
  document.getElementById('remove-filter').addEventListener('click', () => {
      location.href = `http://localhost?table=${currentTable}`;
  });
}

// add event listener to run filterTable() when filter button clicked
if (document.getElementById('submit-filter') != null) {
  document.getElementById('submit-filter').addEventListener('click', () => filterTable());
}

//pre: function called by clicking "apply filter" button to parse values in filter section
//post: filter values detected and parsed and url is redirected to pass in filtered values
function filterTable() {
    const filters = document.querySelectorAll('.filter-row');
    var url = `http://localhost?table=${currentTable}`;

    filters.forEach(filters => {
        var filterValue = filters.querySelector('.filter-value').value;

        // if filtervalue is empty, continue to next iteration
        if (filterValue == "") {
            return;
        }

        // get operator and target column for filtering
        var operator = filters.querySelector('.operator-dd').value;
        var column = filters["innerText" in filters ? "innerText" : "textContent"].trim(); // trim removes trailing whitespace
        //const column = filters.querySelector('.col-name').textContent;

        url += `&${column}=${operator}${filterValue}`;
    });
    location.href = url;
}

// for collapsible filter section
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.maxHeight){
      content.style.maxHeight = null;
      content.style.padding = "0 18px";
    } else {
      content.style.maxHeight = content.scrollHeight + "px";
      content.style.padding = "15px 18px";
    } 
  });
}
