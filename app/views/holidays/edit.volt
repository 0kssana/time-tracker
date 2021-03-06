<?php
/**
 * @var \Phalcon\Mvc\View\Engine\Php $this
 */
?>

<div class="row">
    <nav>
        <ul class="pager">
            <li class="previous"><?php echo $this->tag->linkTo(["holidays", "Back"]) ?></li>
        </ul>
    </nav>
</div>

<div class="page-header">
    <h1>
        Edit holiday
    </h1>
</div>

<?php echo $this->getContent(); ?>

<?php
    echo $this->tag->form(
        [
            "holidays/save",
            "autocomplete" => "off",
            "class" => "form-horizontal"
        ]
    );
?>

<div class="form-group">
    <label for="fieldName" class="col-sm-2 control-label">Name</label>
    <div class="col-sm-10">
    <!--    <input type="text" name="name" class="form-control" id="fieldName"> -->
     <?php echo $this->tag->textField(["name", "type" => "textField", "class" => "form-control", "id" => "fieldName"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldDateHoliday" class="col-sm-2 control-label">Day Of Holiday</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["day", "type" => "date", "class" => "form-control", "id" => "fieldDay"]) ?>
    </div>
</div>
<div class="form-group">
    <label for="fieldDateHoliday" class="col-sm-2 control-label">Month Of Holiday</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["month", "type" => "date", "class" => "form-control", "id" => "fieldMonth"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldActive" class="col-sm-2 control-label">Active</label>
    <div class="col-sm-10">
        <?php echo $this->tag->selectStatic(["active", [1 => 'N',2 => 'Y'], "class" => "form-control", "id" => "fieldActive"]) ?>
    </div>
</div>


<?php echo $this->tag->hiddenField("id") ?>

<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <?php echo $this->tag->submitButton(["Save", "class" => "btn btn-default"]) ?>
    </div>
</div>

<?php echo $this->tag->endForm(); ?>