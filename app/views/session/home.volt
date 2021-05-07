{% for user in users %}

    {{user}}

{% endfor  %}


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
        echo "<td>" . "</td>";
        echo "</tr>";
         foreach ($array_days as $key_d=>$val_w){
         $day = $key_d+1;
         echo "<tr><td style=\"width: 75px; height: 75px; border: 1px solid #000000; text-align: center;>\" <br> ".$day."<br>".$val_w."<br><br></td></tr>";
}

echo "</table>";
        ?>