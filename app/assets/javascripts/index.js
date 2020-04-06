window.addEventListener('load',function(){
  let tabs = $(".collection-item.home");
  function tabSwitch(){
    $(".active").removeClass("active");
    $(".orange").removeClass("orange");
    $(this).addClass("active");
    $(this).addClass("orange");
    const index = tabs.index(this);
    $(".main").removeClass("show").eq(index).addClass("show");
  }
  tabs.click(tabSwitch);
});