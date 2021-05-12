
//
// $('#timerbutton').on('click',function (event){
//     console.log('test');
//     event.preventDefault();
//     let state = $(this).val();
//     if(state == "start"){
//         $(this).prop('value', 'stop');
//     }else{
//         $(this).prop('value', 'start');
//     }
//
//     $.ajax({
//         type: "POST",
//         url: "test",
//         dataType: 'json',
//         data: {
//             "state": state
//         },         // данные, которые отправляем на сервер
//
//         success: function(data) {
//
//             $("#timertable").empty();
//
//             console.log(data);
//             $.each(data, function( index, value ) {
//                 console.log( "started time" + ": " + value['started_time'] );
//                 console.log( "stopped time" + ": " + value['stopped_time'] );
//                 $("#timertable").append("<tr><td>"+value['started_time']+" <> </td><td>"+value['stopped_time'] +"</td></tr>");
//             });
//
//         }
//     });
//
// });