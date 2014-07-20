console.log('reading attachments.fileupload');


attachFileupload= function(){
  console.log('running attach.fileupload');  
  'use strict';

  // $('.fileupload-btn').addClass('ive-been-touched-by-fileupload'); // Sanity

  $('.fileupload-btn').fileupload({
      // url: '/company/jobs/:job_id/entries/:entry_id/attachments(.:format)' #This would be more restful...
      url: '/attachments'
  });

  $('fileupload-btn').fileupload({
    drop: function (e, data) {
        $.each(data.files, function (index, file) {
            // alert('Dropped file: ' + file.name);
            changeFocusTo(entry, this)
        });
    },
    change: function (e, data) {
        $.each(data.files, function (index, file) {
            // alert('Selected file: ' + file.name);
            // entriesCollection.fetch
        });
    }
});


}


$(function(){
  console.log('dom ready from attachments.fileupload');  


  // THIS IS ALL FROM THE MAIN.JS fileupload example

  'use strict';

  // Initialize the jQuery File Upload widget:
  $('#fileupload').fileupload({
      // Uncomment the following to send cross-domain cookies:
      //xhrFields: {withCredentials: true},
      // url: 'server/php/'
  });

  // // Enable iframe cross-domain access via redirect option:
  // $('#fileupload').fileupload(
  //     'option',
  //     'redirect',
  //     window.location.href.replace(
  //         /\/[^\/]*$/,
  //         '/cors/result.html?%s'
  //     )
  // );

  // if (window.location.hostname === 'blueimp.github.io') {
  //     // Demo settings:
  //     $('#fileupload').fileupload('option', {
  //         url: '//jquery-file-upload.appspot.com/',
  //         // Enable image resizing, except for Android and Opera,
  //         // which actually support image resizing, but fail to
  //         // send Blob objects via XHR requests:
  //         disableImageResize: /Android(?!.*Chrome)|Opera/
  //             .test(window.navigator.userAgent),
  //         maxFileSize: 5000000,
  //         acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i
  //     });
  //     // Upload server status check for browsers with CORS support:
  //     if ($.support.cors) {
  //         $.ajax({
  //             url: '//jquery-file-upload.appspot.com/',
  //             type: 'HEAD'
  //         }).fail(function () {
  //             $('<div class="alert alert-danger"/>')
  //                 .text('Upload server currently unavailable - ' +
  //                         new Date())
  //                 .appendTo('#fileupload');
  //         });
  //     }
  // } else {
  //     // Load existing files:
  //     $('#fileupload').addClass('fileupload-processing');
  //     $.ajax({
  //         // Uncomment the following to send cross-domain cookies:
  //         //xhrFields: {withCredentials: true},
  //         url: $('#fileupload').fileupload('option', 'url'),
  //         dataType: 'json',
  //         context: $('#fileupload')[0]
  //     }).always(function () {
  //         $(this).removeClass('fileupload-processing');
  //     }).done(function (result) {
  //         $(this).fileupload('option', 'done')
  //             .call(this, $.Event('done'), {result: result});
  //     });
  // }

});