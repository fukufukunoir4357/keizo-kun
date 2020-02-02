/* global $ */
/* global a */
/* global jQuery */

$(function(){
  
  $('select[name= "favorite_site_id"]').change(function(){
    
    
    var site_class = $('select[name= "site-selector"] option:selected').attr("class");
    console.log(site_class);
  
  
    var count = $('select[name= "course-selector"]').children().length;
    console.log(count);
  
      for(a=0; a<count; a++){
        
        var course_selector = $('select[name= "course-selector"] option:eq('+a+')');
        
        if(course_selector.attr("class") === site_class){course_selector.show();}
        
        else {course_selector.hide()}
      }
  });
});