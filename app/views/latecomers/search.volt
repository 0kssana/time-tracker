
<?php
/**
 * @var \Phalcon\Mvc\View\Engine\Php $this
 */
?>

<?php use Phalcon\Tag; ?>

<div class="row">
    <nav>
        <ul class="pager">
            <li class="previous"><?php echo $this->tag->linkTo(["latecomers", "Go Back"]); ?></li>
        </ul>
    </nav>
</div>

<div class="page-header">
    <h1>Search result</h1>
</div>

<?php echo $this->getContent(); ?>

<div class="row">
    <table class="table table-bordered">
        <thead>
            <tr>
            <th>Name</th>
            <th>Start Time</th>
            </tr>
        </thead>
            <tbody>
            {% for latecomers in page.items  %}
                    <tr>
                        <td>{{  latecomers.usersLate.name }}</td>
                    </tr>
            {% endfor %}
        <tr>
        </tr>
        </tbody>
    </table>
</div>

<div class="row">
    <div class="col-sm-1">
        <p class="pagination" style="line-height: 1.42857;padding: 6px 12px;">
            <?php echo $page->current, "/", $page->total_pages ?>
        </p>
    </div>
    <div class="col-sm-11">
        <nav>
            <ul class="pagination">
                <li><?php echo $this->tag->linkTo(["latecomers/search", "First", 'class' => 'page-link']) ?></li>
                <li><?php echo $this->tag->linkTo(["latecomers/search?page=" . $page->before, "Previous", 'class' => 'page-link']) ?></li>
                <li><?php echo $this->tag->linkTo(["latecomers/search?page=" . $page->next, "Next", 'class' => 'page-link']) ?></li>
                <li><?php echo $this->tag->linkTo(["latecomers/search?page=" . $page->last, "Last", 'class' => 'page-link']) ?></li>
            </ul>
        </nav>
    </div>
</div>



<!--
{{ content() }}

<div class="row mb-4">
    <div class="col-6">
       {{ link_to("latecomers/index", '<span class="oi oi-chevron-left" title="chevron-left" aria-hidden="true"></span> Go Back', "class": "btn btn-outline-primary") }}
    </div>
    <div class="col-6 text-right">
        {{ link_to("latecomers/create", '<span class="oi oi-plus" title="plus" aria-hidden="true"></span> Create Profile', "class": "btn btn-primary") }}
    </div>
</div>

<div class="table-responsive">
{% for latecomers in page.items %}
{% if loop.first %}
<table class="table table-bordered table-striped" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Active?</th>
            <th colspan="2">Action</th>
        </tr>
    </thead>
    <tbody>
{% endif %}
        <tr>
            <td>{{ latecomers.id }}</td>
            <td>{{ latecomers.name }}</td>
            <td>{{ latecomers.active == 'Y' ? 'Yes' : 'No' }}</td>
            <td width="12%">{{ link_to("latecomers/edit/" ~ latecomers.id, '<span class="oi oi-pencil" title="pencil" aria-hidden="true"></span> Edit', "class": "btn btn-light btn-sm") }}</td>
            <td width="12%">{{ link_to("profiles/delete/" ~ profile.id, '<span class="oi oi-x" title="X" aria-hidden="true"></span> Delete', "class": "btn btn-light btn-sm") }}</td>
        </tr>
{% if loop.last %}
    </tbody>

    <tfoot>
        <tr>
            <td colspan="10" class="text-right"">
                   <ul class="pagination mb-0">
                    <li class="page-item">
                        {{ link_to("latecomers/search", '<span class="oi oi-media-skip-backward" title="skip backward" aria-hidden="true"></span> First', "class": "page-link") }}
                    </li>
                    <li class="page-item">
                        {{ link_to("latecomers/search?page=" ~ page.before, '<span class="oi oi-media-step-backward" title="step backward" aria-hidden="true"></span> Previous', "class": "page-link") }}
                    </li>
                    <li class="page-item disabled">
                        {{ link_to("#", page.current ~ "/" ~ page.total_pages, "class":"page-link") }}
                    </li>
                    <li class="page-item">
                        {{ link_to("latecomers/search?page=" ~ page.next, '<span class="oi oi-media-step-forward" title="step forward" aria-hidden="true"></span> Next', "class": "page-link") }}
                    </li>
                    <li class="page-item">
                        {{ link_to("latecomers/search?page=" ~ page.last, '<span class="oi oi-media-skip-forward" title="skip forward" aria-hidden="true"></span> Last', "class": "page-link") }}
                    </li>
                </ul>
            </td>
        </tr>
    </tfoot>
</table>
{% endif %}
{% else %}
    No latecomers are recorded
{% endfor %}
</div>

-->