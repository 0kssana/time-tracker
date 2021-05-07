
<hr> <br>


<?php
if ($users->count() > 0) {
?>
<table class="table table-bordered table-hover">
    <thead class="thead-light">
    <tr>
        <th>#</th>
        <th>Login</th>
        <th>Name</th>
        <th>Email</th>
    </tr>
    </thead>
    <tfoot>
    <tr>
        <td colspan="5">Users quantity: <?php echo $users->count(); ?></td>
    </tr>
    </tfoot>
    <tbody>
    <?php foreach ($users as $user) { ?>
        <tr>
            <td><?php echo $user->id; ?></td>
            <td><?php echo $user->login; ?></td>
            <td><?php echo $user->name; ?></td>
            <td><?php echo $user->email; ?></td>
        </tr>
    <?php } ?>
    </tbody>
</table>
    <?php
}

?>



<?php


        $date_now = date("Y-m-d", time());
        $month = date('m', strtotime($date_now));
        $year = date('Y', strtotime($date_now));
        $num_of_days = cal_days_in_month(CAL_GREGORIAN, $month, $year);
        $array_days = [];
        for ($i = 1; $i<=$num_of_days; $i++){
        $date = date($year."-".$month."-".$i);
        array_push($array_days, date('l', strtotime($date)));
        }



        echo "<table> <tr> <td> </td>";
        foreach ($users as $user) {
               echo "<td style=\"width: 75px; height: 75px; border: 1px solid #000000; text-align: center;>\">" . $user->name . "</td>";
        }
               echo "</tr>";


         foreach ($array_days as $key_d=>$val_w){
         $day = $key_d+1;
         echo "<tr><td style=\"width: 75px; height: 75px; border: 1px solid #000000; text-align: center;>\" <br> ".$day."<br>".$val_w."<br><br></td></tr>";
}

echo "</table>";
        ?>