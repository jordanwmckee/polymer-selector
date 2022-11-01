// add listener to modify url based on table dropdown selection
var selectedTable = document.getElementById('tables');
selectedTable.addEventListener('change', function() {
    location.href = `http://localhost?table=${selectedTable.value}`;
    //window.history.replaceState(null, null, "?arg=123"); << for updating url without refresh
});

// add listener to set selected value in table to current displayed table
const currentURL = window.location.href;
const url = new URL(currentURL);
var currentTable;
if (url.searchParams.get('table')) {
  currentTable = url.searchParams.get('table');
  selectedTable.value = currentTable;
} else {
  selectedTable.selectedIndex = 0;
}

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

        url += `&${column}=${operator}${filterValue}`;
    });
    location.href = url;
}

// add event listener to submit update button
if (document.getElementById('submit-update') != null) {
  document.getElementById('submit-update').addEventListener('click', () => submitUpdate());
}

//pre: submit button clicked with at least one valid value filled into input
//post: fields are parsed and sent to update_db.php page to submit a query to insert/update table
function submitUpdate() {
  const values = document.querySelectorAll('.update-row');
  var url = `http://localhost/update.php?table=${currentTable}`;

  values.forEach(values => {
      var updateValue = values.querySelector('.update-value').value;

      // if updateValue is empty, continue to next iteration
      if (updateValue == "") {
          return;
      }

      // get operator and target column for update
      var column = values["innerText" in values ? "innerText" : "textContent"].trim(); // trim removes trailing whitespace

      url += `&${column}=${updateValue}`;
  });
  location.href = url;
}

//pre: function called when update button on header is clicked
//post: if update table dropdown is closed, open and goto location on page
function openUpdateDropdown() {
  if (!document.getElementById('update-content'))
    return;
  var updateButton = document.getElementById('update-content');
  if (!updateButton.style.maxHeight) {
    let content = updateButton.nextElementSibling;
    content.style.maxHeight = content.scrollHeight + "px";
    content.style.padding = "15px 18px";
  }
  updateButton.scrollIntoView();
}

// for collapsible filter section >>
var coll = document.getElementsByClassName("collapsible");
var i;

// start with collapsibles open
for (i = 0; i < coll.length; i++) {
  coll[i].classList.toggle("active");
  var content = coll[i].nextElementSibling;
  content.style.maxHeight = content.scrollHeight + "px";
  content.style.padding = "15px 18px";
}

// add event listeners to open and close collapsibles
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
