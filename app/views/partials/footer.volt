{# this is example of "include" in volt which we are using for our common footer everywhere #}

<footer class="topFooter container-fluid">
    <div class="row">
            <div class="col-md-4">
                Made through overcoming pain and despair by TO
            </div>
            <div class="col-md-4">
                {{ link_to("privacy", "Privacy Policy") }}
                {{ link_to("terms", "Terms") }}
            </div>
            <div class="col-md-4">
                 &copy; {{ date("Y") }} Timur Osmonov.
            </div>
    </div>
</footer>
            