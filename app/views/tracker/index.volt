

{{ content() }}


<form action="tracker/index" method="POST">
    <select name="month" onchange="this.form.submit();" class="form-control">
        <option value="all" selected="selected">All</option>
        <option value="1">January</option>
        <option value="2">February</option>
        <option value="3">March</option>
        <option value="4">April</option>
        <option value="5" selected="selected">May</option>
        <option value="6">June</option>
        <option value="7">July</option>
        <option value="8">August</option>
        <option value="9">September</option>
        <option value="10">October</option>
        <option value="11">November</option>
        <option value="12">December</option>
    </select>&nbsp;&nbsp;&nbsp;&nbsp;
    <select name="year" onchange="this.form.submit();" class="form-control">
        <option value="2009">2009</option>
        <option value="2010">2010</option>
        <option value="2011">2011</option>
        <option value="2012">2012</option>
        <option value="2013">2013</option>
        <option value="2014">2014</option>
        <option value="2015">2015</option>
        <option value="2016">2016</option>
        <option value="2017">2017</option>
        <option value="2018">2018</option>
        <option value="2019">2019</option>
        <option value="2020">2020</option>
        <option value="2021" selected="selected">2021</option>
    </select>&nbsp;&nbsp;&nbsp;&nbsp;
</form>
<input id="id" type="hidden" name="id" value=""/>
<!--<input id="timerbutton"  class="mk" type="button" name="timerbutton" value="start" />-->

<!--<table id="timertable">-->
<!---->
<!--</table>-->


<table>
    <tr>
        <th>Current date</th>
        <th>Start time</th>
        <th>End time</th>
        <th>Total time</th>
    </tr>
    <tr>
        <th>currentTime</th>
        <th id="start"></th>
        <th id="end"></th>
    </tr>
</table>
<div >
    <input id="id" class="btn btn-primary" type="hidden" name="id" value="">
    <input id="timerbutton" class="btn btn-primary"  type="button" name="timerbutton" value="start"/>
</div>

<table>
    <tr>
        <th>Current date</th>
        <th>Start time</th>
        <th>End time</th>
        <th>Total time</th>
    </tr>
    <tr>
        <th> </th>
        <th id="start"></th>
        <th id="end"></th>
        <th>Country</th>
    </tr>
</table>
<table class="table table-bordered">
    <thead>
    <tr>
        <td>
            Date
        </td>
        <td>



        </td>
        {% for user in users %}
        <th scope="row">{{ user.name }}</th>
        {% endfor %}
    </tr>
    </thead>
    <tbody>



    {% for  dateTime in dates %}



    <tr>



        <td style="background-color:#FF0000">

             <?php echo intval(date('d', strtotime($dateTime))); ?>
        </td>
        <td style="background-color:#00FF00">
            <?php echo date('l', strtotime($dateTime)); ?>
        </td>



        <td>
          <?php foreach ($users as $user){ ?>
        <td>
           <?php foreach ($user->times as $workTime) { ?>
            <?php if ($dateTime == $workTime->date && $workTime->user_id == $userId) { ?>
            <div>
              <?php echo $workTime->start_time . " : " . $workTime->end_time. "<br/>".  $workTime->total_time ?>
            </div>
           <?php } ?>



            <?php } ?>
        </td>



        <?php } ?>
        </td>



    </tr>



    {% endfor %}
    </tbody>
</table>
