
    
    <button class="navbar-toggler justify-content-end" type="button" data-toggle="collapse" data-target="#nav-content-secondary" aria-controls="nav-content-secondary" area-expanded="false" aria-label="Toggle Navigation Secondary" >
        <span class="oi oi-person" title="person" aria-hidden="true"></span>
    </button>
        <div class="collapse navbar-collapse justify-content-end" id="nav-content-secondary">
            <ul class="navbar-nav">
            {%- if logged_in is defined and not(logged_in is empty) -%}
                <li class="nav-item">{{ link_to('users', 'Users Panel', 'class':'nav-link') }}</li>
                <li class="nav-item">{{ link_to('session/logout', 'Logout', 'class':'nav-link') }}</li>
            {% else %}
                <li class="nav-item">{{ link_to('session/login', 'Login', 'class':'nav-link') }}</li>
                <li class="nav-item">{{ link_to('session/signup', 'Register', 'class':'nav-link') }}</li>
            {% endif %}
            </ul>
        </div>
 </nav>

<main role="main" class="container mt-4">
            {{ content() }}
</main>
{# our common footer #}
{% include 'partials/footer.volt' %}
