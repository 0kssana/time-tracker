<?php
/**
 * @var \Phalcon\Mvc\View\Engine\Php $this
 */
?>
{{ content() }}

<div class="page-header">
    <h1 style="color: green">
        Limit  late and Limit one month hours
    </h1>
</div>




<div class="col-md-6">
    <?php foreach ($late as $item) { ?>
        <p>Hours limit : <?php echo $item->time ?></p>
        <p>Month  limit :<?php echo $item->total ?></p>
        <button class="btn btn-light"><?php echo $this->tag->linkTo(["late/edit/".$item->id, "Edit late limit"]) ?></button>
    <?php } ?>
</div>



   <table class="table table-bordered">
        <thead>
            <tr>
                <td> Date </td>
                    {% for user in users %}
                <th scope="row">{{ user.name }}</th>
                    {% endfor %}
            </tr>
        </thead>
        <tbody>
        {% for  dateTime in dates %}
            <tr>
                <td style="background-color:#c8f3ee; width: 120px">
                     <?php echo intval(date('d', strtotime($dateTime))); ?>
                     <br>
                     <?php echo date('l', strtotime($dateTime)); ?>
                </td>
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
            </tr>
        {% endfor %}
        </tbody>
    </table>
