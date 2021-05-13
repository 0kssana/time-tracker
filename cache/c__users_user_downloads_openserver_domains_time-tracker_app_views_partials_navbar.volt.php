<nav id="topNav" class="navbar navbar-expand-sm navbar-dark bg-primary">

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nav-content"
             aria-controls="nav-content" area-expanded="false" aria-label="Toggle Navigation">
         <span class="oi oi-menu" title="MENU" aria-hidden="true"></span>
    </button>

    <div class="collapse navbar-collapse" id="nav-content">  
         <ul class="navbar-nav">
            <li class="nav-item"><a href="/session/home" class="nav-link">Home</a></li>
         </ul>
    </div> <!-- navbar-collapse -->

    <a href="/" class="navbar-brand">Time-Tracker</a>

    <button class="navbar-toggler justify-content-end" type="button" data-toggle="collapse"
         data-target="#nav-content-secondary" aria-controls="nav-content-secondary"
             area-expanded="false" aria-label="Toggle Navigation Secondary" >
         <span class="oi oi-person" title="person" aria-hidden="true"></span>
    </button>

    <div class="collapse navbar-collapse justify-content-end" id="nav-content-secondary">
        <ul class="navbar-nav">
            <li class="nav-item"><a href="/session/login" class="nav-link">Login</a></li>
            <li class="nav-item"><a href="/session/signup" class="nav-link">Register</a></li>
        </ul>
    </div>
</nav>

<nav class="navbar navbar-light bg-light">
    <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
            Home button
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="/tracker">Time button</a>
            <a class="dropdown-item" href="#">Change password</a>
            <a class="dropdown-item" href="#">Something else here</a>
        </div>
    </div>

     <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
            Admin button
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="/user">Users</a>
            <a class="dropdown-item" href="#">Holidays</a>
            <a class="dropdown-item" href="#">Something else here</a>
        </div>
    </div>
</nav>