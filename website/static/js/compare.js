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

$(".chosen-select").chosen({
    no_results_text: "Oops, nothing found!"
})

// checkbox events
$(function(){
    // select all
    $("#all").click(function(){ 
        $('.chosen-select option').prop('selected', true);  
        $('.chosen-select').trigger('chosen:updated');
    });
    // deselect all 
    $("#none").click(function(){ 
        $('.chosen-select option:selected').removeAttr('selected');
        $('.chosen-select').trigger('chosen:updated');      
    });
        
    $("#apply-filters").click(() => {
        const selections = $(".chosen-select").chosen().val();
        
        if (selections && selections.length >= 1) {
          var p1 = $("#polymer1").val();
          var p2 = $("#polymer2").val();
          var url = `http://localhost/compare.php?polymer1=${p1}&polymer2=${p2}`;
          selections.forEach(s => {
              url += `&tables[]=${s}`;
          });
          location.href = url;
        } else {
            alert("No tables selected!");
        }
    });
});
