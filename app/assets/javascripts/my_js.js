function hide_all(){
  $('.equation').each(function(){
    $(this).hide();
  });
}
function test_function1(){
  hide_all();
  $('#eq1').show();
}
function test_function2(){
  hide_all();
  $('#eq2').show();
}
function test_function3(){
  hide_all();
  $('#eq3').show();
}
