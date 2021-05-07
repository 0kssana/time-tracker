
<hr> <br>

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

        $count = $users->count();

        echo "<table> <tr> <td> </td>";
        foreach ($users as $user) {
               echo "<td style=\"width: 75px; height: 75px; border: 1px solid #000000; text-align: center;>\">" . $user->name . "</td>";
        }
               echo "</tr>";


         foreach ($array_days as $key_d=>$val_w){
         $day = $key_d+1;
         echo "<tr>";
         echo "<td style=\"width: 75px; height: 75px; border: 1px solid #000000; text-align: center;>\" <br> ";
         echo $day . "<br>" . $val_w . "<br><br></td>";
          echo str_repeat("<td style=\"width: 75px; height: 75px; border: 1px solid #000000; text-align: center;>\"> </td>", $count)  . '</tr>';
}


echo "</table>";
        ?>