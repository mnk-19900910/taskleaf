document.addEventListener('turbolinks:load', function() {
  document.querySelectorAll('td').forEach(function(td){
    console.log('color');
    td.addEventListener('mouseover', function(e){
      e.currentTarget.style.backgroundColor = '#ea4';
    });

    td.addEventListener('mouseout', function(e){
      e.currentTarget.style.backgroundColor = '';
    });
  });


  // document.querySelectorAll('.delete').forEach(function(a){
  //   a.addEventListener('ajax:success', function(){
  //     var td = a.parentNode;
  //     var tr = td.parantNode;
  //     tr.style.display = 'none';
  //   });
  // });
});