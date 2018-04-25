$(document).ready(function(){
  /* initialise handlebarsjs templates
  these reference the ids of <script> tags in the HTML file
   */
  $('.popover-dismiss').popover({
    trigger: 'focus'
  });
  $('button#toggle-all-interlinear').click(function(){
    if ($(this).data('action') === 'show'){
      $('.glossed').popover('show');
      $(this).data('action','hide');
    } else {
      $('.glossed').popover('hide');
      $(this).data('action','show');
    }
  });
  $('#transcription br').replaceWith(' | ');
  $('[data-toggle="popover"]').popover({trigger:'click'});
  var templates = {
    note : Handlebars.compile(document.getElementById("template-note").innerHTML),
    // [...]
  };
  console.log(templates);
  $('#welcome-splash').modal('show');
  $('.note').each(function(i){
    var note = {
      author: $(this).data('author'),
      type: $(this).data('note-type'),
      content: $(this).html(),
      id: i,
    };
    $('#sidebar').append(templates.note(note));
    var noteMarker = $('<span class="note-marker" data-note-id="'+i+'"></span>').text('*').on('click',function(){
      $('.sidebar-note,.note-marker').removeClass('bg-light border border-secondary text-danger');
      $(this).addClass('text-danger');
      $('.sidebar-note[data-note-id="'+i+'"').addClass('bg-light border border-secondary');
    });
    $(this).replaceWith(noteMarker);
  });
  $('#sidebar').on('click','.sidebar-note',function(){
    $('.sidebar-note,.note-marker').removeClass('bg-light border border-secondary text-danger');
    $(this).addClass('bg-light border border-secondary');
    $('.note-marker[data-note-id="'+$(this).data('note-id')+'"').addClass('text-danger');
  });
});
