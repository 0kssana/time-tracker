<?php
/**
 * @var \Phalcon\Mvc\View\Engine\Php $this
 */
?>

<div class="row">
    <nav>
        <ul class="pager">
            <li class="previous"><?php echo $this->tag->linkTo(["late", "Go Back"]) ?></li>
        </ul>
    </nav>
</div>

<div class="page-header">
    <h1>
        Create late
    </h1>
</div>

<?php echo $this->getContent(); ?>

<?php
    echo $this->tag->form(
        [
            "late/create",
            "autocomplete" => "off",
            "class" => "form-horizontal"
        ]
    );
?>

<div class="form-group">
    <label for="fieldTime" class="col-sm-2 control-label">Time</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["time", "size" => 30, "class" => "form-control", "id" => "fieldTime"]) ?>
    </div>
</div>


<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <?php echo $this->tag->submitButton(["Save", "class" => "btn btn-default"]) ?>
    </div>
</div>

<?php echo $this->tag->endForm(); ?>