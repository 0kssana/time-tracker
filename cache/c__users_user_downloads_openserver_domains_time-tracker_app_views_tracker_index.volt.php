<!-- To count the number of working days for the specified period -->
<?php

$holidays = array("2008-12-25", "2008-12-26", "2009-01-01");

function getWorkingDays($startDate,$endDate,$holidays)
{
     $endDate = strtotime($endDate);
     $startDate = strtotime($startDate);

     $days = ($endDate - $startDate) / 86400 + 1;

     $no_full_weeks = floor($days / 7);
     $no_remaining_days = fmod($days, 7);
     $the_first_day_of_week = date("N", $startDate);
     $the_last_day_of_week = date("N", $endDate);

     if ($the_first_day_of_week <= $the_last_day_of_week)
     {
        if ($the_first_day_of_week <= 6 && 6 <= $the_last_day_of_week)
                $no_remaining_days--;
        if ($the_first_day_of_week <= 7 && 7 <= $the_last_day_of_week)
                $no_remaining_days--;
     } else
     {
        if ($the_first_day_of_week == 7)
        {
            $no_remaining_days--;
            if ($the_last_day_of_week == 6)
            {
                 $no_remaining_days--;
            }
        } else
        {
            $no_remaining_days -= 2;
        }
     }

    $workingDays = $no_full_weeks * 5;

    if ($no_remaining_days > 0 )
    {
        $workingDays += $no_remaining_days;
    }

    foreach($holidays as $holiday)
    {
        $time_stamp=strtotime($holiday);
        if ($startDate <= $time_stamp && $time_stamp <= $endDate && date("N",$time_stamp) != 6
                && date("N",$time_stamp) != 7)
        $workingDays--;
    }
    $workingH = $workingDays*8;
    echo '<div style="font-size: xx-large; margin-bottom: 100px;">';
    echo 'This month there are <strong> ' . $workingDays . ' </strong> working days. That is <strong> '
            . $workingH . ' </strong> working hours';
    echo '</div>';

}
    getWorkingDays(date('Y-m-01'), date('Y-m-t'), $holidays);

?> <!-- Time counting function ended -->

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
        url: "Tracker/test",
        dataType: 'json',
        data: {
            "state": state
        },         // данные, которые отправляем на сервер

        success: function(data) {
console.log(data);
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
