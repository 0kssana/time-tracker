<div class="dropdown">
    <button class="btn btn-secondary dropdown-toggle" type="button" id="UsersButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Dropdown button
    </button>
    <div class="dropdown-menu" aria-labelledby="UsersButton">

        <?php foreach ($users->toArray() as $user) { ?>
            <a class="dropdown-item" href="/time/userid/<? echo $user['id'];?>"><? echo $user["login"] ;?></a>
        <?php }?>
    </div>
</div>

    <?php  print_die($user['id']);?>