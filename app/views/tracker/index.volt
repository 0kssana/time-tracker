
<!--
<p>
    <label for="name">start</label>
   <?php echo $this->tag->textField("name"); ?>
</p> -->

<?php $this->assets->outputJs() ?>
    <input id="id" type="hidden" name="id" value="" />
<input id="timerbutton"  class="mk" type="button" name="timerbutton" value="start" />
<table id="timertable">

</table>


<table>
<tr>
    <tn id="start-test"></tn>
</tr>
</table>

 <script>
$('#timerbutton').on('click',function (event){
    event.preventDefault();
    let state = $(this).val();
    if(state == "start"){
        $(this).prop('value', 'stop');
    }else{
        $(this).prop('value', 'start');
    }
 console.log(state);
    $.ajax({
        type: "POST",
        url: "test",
        dataType: 'json',
        data: {
            "state": state
        },         // данные, которые отправляем на сервер

        success: function(data) {

            $("#timertable").empty();

            console.log(data);
            $.each(data, function( index, value ) {
                console.log( "start time" + ": " + value['start_time'] );
                console.log( "stop time" + ": " + value['stop_time'] );
                $("#timertable").append("<tr><td>"+value['start_time']+" <> </td><td>"+value['stop_time'] +"</td></tr>");
            });

        }
    });

});
</script>