jQuery(function() {
  // highlight current nav item
  $('.nav li').removeClass('active').each(function() {
    if($(this).find('a').attr('href') == location.pathname) {
      $(this).addClass('active');
    }
  });
});
