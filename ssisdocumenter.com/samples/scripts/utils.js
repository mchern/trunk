function SwitchStyle(origClass, fromClass, toClass) {

    $('tr.property').each(function(index) {
      var tr = $(this)
       if (!tr.hasClass(toClass))
           tr.addClass(toClass);
       if (tr.hasClass(fromClass))
           tr.removeClass(fromClass);
       
   });
}