<?php echo $this->tag->form("time/second"); ?>



<?php
$date = new DateTime('now', new DateTimeZone('Asia/Bishkek'));
$time = $date->format('H:i:s');

?>

<form>

    <p>
        <?php echo $this->tag->submitButton('go'); ?>
    </p>

    <p>
        <label for="name">Имя</label>t
        <?php echo $this->tag->textField("name"); ?>
    </p>


</form>