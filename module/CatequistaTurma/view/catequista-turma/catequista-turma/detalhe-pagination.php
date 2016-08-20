<link rel="stylesheet" href="/assets/compact-css/jquery.tablesorter.theme.bootstrap.css,jquery.tablesorter.pager.css">

<div class="col-md-12">
    <div class="table-responsive">
        <table class="table table-striped" id="tablesorterDetalhes">
            <thead>
            <tr>
                <th class="text-center">Turma</th>
                <th class="text-center">Catequista</th>
               

            </tr>
            </thead>
            <tfoot>
            <tr>
                  <th class="text-center">Turma</th>
                <th class="text-center">Catequista</th>
            </tr>
            <tr>
                <th colspan="6" class="ts-pager form-horizontal">
                    <?php
                    echo $this->paginationControl(
                        $paginator, 'Sliding', 'partials/pagination.phtml', [
                            'urlPagination' => '/catequista_turma-catequistaturma/detalhe-pagination',
                            'countPerPage' => $countPerPage,
                            'divData' => '#catequistaturma-pagination',
                        ]
                    );
                    ?>
                </th>
            </tr>
            </tfoot>
            <?php
            $numeroLinha = (($paginator->getCurrentPageNumber() - 1) * $paginator->getItemCountPerPage());
            if (!empty($paginator)) {
                ?>
                <tbody class="">
                <tr role="row" class="tablesorter-filter-row">
                    <?php
                    foreach ($camposFilter as $key => $campoFilter) {
                        ?>
                        <td>
                            <?php
                            if (!is_null($campoFilter)) {
                                ?>
                                <input type="search" placeholder="" class="tablesorter-filter" data-column="<?= $key ?>"
                                       value="<?= isset($filter[$key]) ? $filter[$key] : '' ?>">
                                <?php
                            } else {
                                ?>
                                &nbsp;
                                <?php
                            }
                            ?>
                        </td>
                        <?php
                    }
                    ?>
                </tr>
                <?php
                foreach ($paginator as $key => $catequista_turma) {
                    ?>
                    <tr>
                        <td class="text-center"><?= \Estrutura\Helpers\String::nomeTudoMaiusculo($catequista_turma['nm_turma']) ?></td>
                        <td class="text-center"><?= \Estrutura\Helpers\String::nomeTudoMaiusculo($catequista_turma['nm_catequista']) ?></td>
                        
                        <td class="text-center">
                                <span class="btn-group" style="width: 100px;">
                                    <?= \Estrutura\Service\HtmlHelper::botaoExcluir($this->url('catequista_turma', array('controller' => 'catequista_turma-catequistaturma', 'action' => 'excluir-catequista-turma', 'id_turma' => Estrutura\Helpers\Cript::enc($catequista_turma['id_turma']), 'id_catequista' => Estrutura\Helpers\Cript::enc($catequista_turma['id_catequista']), 'id_catequista_turma' => Estrutura\Helpers\Cript::enc($catequista_turma['id_catequista_turma']) ))) ?>
                                </span>
                        </td>
                    </tr>
                    <?php
                }
                ?>
                </tbody>
                <?php
            }
            ?>

        </table>
        <div class="row">
            <div class="col-md-12">
                <a href="<?= $this->url('navegacao', ['controller' => 'principal-principal']) ?>"
                   class="btn btn-primary" title="Retorna para a Página Principal">Home</a>
                <a class="btn btn-default"
                   href="<?= $this->url('navegacao', array('controller' => $controller, 'action' => 'index')) ?>"
                   title="Adiciona um novo sacramento">Lista de Turmas</a>
            </div>
        </div>
    </div>
</div>
<!--<script src="/assets/compact-js/moment.js,validator.min.js,jquery.mask.min.js,jquery.ui.widget.js,jquery.tablesorter.js,jquery.tablesorter.widgets.js,jquery.tablesorter.pager.js" type="text/javascript"></script>-->
<script src="/assets/js/moment.js" type="text/javascript"></script>
<script src="/assets/js/validator.min.js" type="text/javascript"></script>
<script src="/assets/js/jquery.mask.min.js" type="text/javascript"></script>
<script src="/assets/js/jquery.ui.widget.js" type="text/javascript"></script>
<script src="/assets/js/jquery.tablesorter.js" type="text/javascript"></script>
<script src="/assets/js/jquery.tablesorter.widgets.js" type="text/javascript"></script>
<script src="/assets/js/jquery.tablesorter.pager.js" type="text/javascript"></script>

<script type="text/javascript" language="javascript">
    $(function () {

        // NOTE: $.tablesorter.theme.bootstrap is ALREADY INCLUDED in the jquery.tablesorter.widgets.js
        // file; it is included here to show how you can modify the default classes
        $.tablesorter.themes.bootstrap = {
            // these classes are added to the table. To see other table classes available,
            // look here: http://getbootstrap.com/css/#tables
            table: 'table table-bordered',
            caption: 'caption',
            header: 'bootstrap-header', // give the header a gradient background
            footerRow: '',
            footerCells: '',
            icons: '', // add "icon-white" to make them white; this icon class is added to the <i> in the header
            sortNone: 'bootstrap-icon-unsorted',
            sortAsc: 'icon-chevron-up glyphicon glyphicon-chevron-up', // includes classes for Bootstrap v2 & v3
            sortDesc: 'icon-chevron-down glyphicon glyphicon-chevron-down', // includes classes for Bootstrap v2 & v3
            active: '', // applied when column is sorted
            hover: '', // use custom css here - bootstrap class may not override it
            filterRow: '', // filter row class
            even: '', // odd row zebra striping
            odd: ''  // even row zebra striping
        };

        // call the tablesorter plugin and apply the uitheme widget
        $("#tablesorterDetalhes").tablesorter({
            // this will apply the bootstrap theme if "uitheme" widget is included
            // the widgetOptions.uitheme is no longer required to be set
            theme: "bootstrap",
            widthFixed: true,
            headerTemplate: '{content} {icon}', // new in v2.7. Needed to add the bootstrap icon!

            // widget code contained in the jquery.tablesorter.widgets.js file
            // use the zebra stripe widget if you plan on hiding any rows (filter widget)
            widgets: ["uitheme", "zebra"],
            widgetOptions: {
                // using the default zebra striping class name, so it actually isn't included in the theme variable above
                // this is ONLY needed for bootstrap theming if you are using the filter widget, because rows are hidden
                zebra: ["even", "odd"],
                // reset filters button
                filter_reset: ".reset"

                // set the uitheme widget to use the bootstrap theme class names
                // this is no longer required, if theme is set
                // ,uitheme : "bootstrap"

            },
            headers: {
                5: {sorter: false}
            }
        });


    });
</script>