
<div class="page-header">
    <h1>
        Search late
    </h1>

</div>

<?php echo $this->getContent() ?>


<div class="form-group">
   <ul>
       <?php foreach ($late as $late) { ?>
           <li><?php echo $late->time ?></li>
           <button> <?php echo $this->tag->linkTo(["late/edit/".$late->id , "Edit late",'class'=>'btn btn-success']) ?></button>
       <?php } ?>
   </ul>
</div>

