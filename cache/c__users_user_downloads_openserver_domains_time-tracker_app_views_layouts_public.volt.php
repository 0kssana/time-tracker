
    
    <button class="navbar-toggler justify-content-end" type="button" data-toggle="collapse" data-target="#nav-content-secondary" aria-controls="nav-content-secondary" area-expanded="false" aria-label="Toggle Navigation Secondary" >
        <span class="oi oi-person" title="person" aria-hidden="true"></span>
    </button>
        <div class="collapse navbar-collapse justify-content-end" id="nav-content-secondary">
            <ul class="navbar-nav"><?php if (isset($logged_in) && !(empty($logged_in))) { ?><li class="nav-item"><?= $this->tag->linkTo(['users', 'Users Panel', 'class' => 'nav-link']) ?></li>
                <li class="nav-item"><?= $this->tag->linkTo(['session/logout', 'Logout', 'class' => 'nav-link']) ?></li>
            <?php } else { ?>
                <li class="nav-item"><?= $this->tag->linkTo(['session/login', 'Login', 'class' => 'nav-link']) ?></li>
                <li class="nav-item"><?= $this->tag->linkTo(['session/signup', 'Register', 'class' => 'nav-link']) ?></li>
            <?php } ?>
            </ul>
        </div>
 </nav>

<main role="main" class="container mt-4">
            <?= $this->getContent() ?>
</main>



<footer class="topFooter container-fluid">
    <div class="row">
            <div class="col-md-4">
                Made with love by the Phalcon Team
            </div>
            <div class="col-md-4">
                <?= $this->tag->linkTo(['privacy', 'Privacy Policy']) ?>
                <?= $this->tag->linkTo(['terms', 'Terms']) ?>
            </div>
            <div class="col-md-4">
                 &copy; <?= date('Y') ?> Phalcon Team.
            </div>
    </div>
</footer>
            