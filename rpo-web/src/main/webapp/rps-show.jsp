<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>RPO Console</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap-3.2.0/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/fontwso2-1.2/css/font-wso2.css">
    <link href="css/font-awesome-4.2.0/font-awesome.min.css" rel="stylesheet">
    <link href="css/web-fonts/Roboto.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- BOF cloud menu -->
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="#" id="cloud-menu-popover-xs" data-toggle="popover" data-placement="bottom"
               class="hidden-md hidden-sm hidden-lg cloud-menu-popover">
                <i class="fw fw-tiles"></i>
            </a>
            <a class="navbar-brand" href="#"><img src="images/logo.png" alt="rpo-logo"></a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav menu-right">
                <li><a href="#"><i class="fa fa-book"></i> Documentation</a></li>
                <li class="cloud-menu hidden-xs">
                    <a href="#" id="cloud-menu-popover" data-toggle="popover" data-placement="bottom"
                       class="cloud-menu-popover">
                        <i class="fw fw-tiles"></i>
                    </a>
                </li>
            </ul>
            <!-- BOF cloud menu content -->
            <div class="cloud-menu-content hide">
                <div id="popover-head" class="hide">
                    Navigate to RPO
                </div>
                <div id="popover-content" class="hide">
                    <div class="cloud-apps">
                        <a class="cloud-block" href="rps-show.jsp">
                            <i class="fa fa-3x fa-cubes"></i>
                            <div class="cloud-name">Research Papers</div>
                        </a>
                        <a class="cloud-block" href="#">
                            <i class="fw fw-api fa-3x"></i>
                            <div class="cloud-name">Ontology</div>
                        </a>
                        <a class="cloud-block" href="#">
                            <i class="fw fw-security fa-3x"></i>
                            <div class="cloud-name">Results</div>
                        </a>
                        <div class="clearfix"></div> <!-- to make seperate -->
                    </div>
                </div>
            </div>
            <!-- EOF cloud menu content -->
        </div>
        <!--/.nav-collapse -->
    </div>
</div>
<!-- EOF cloud menu -->
<!-- BOF App  menu -->
<div class="navbar navbar-secondary">
    <div class="container-fliud">
        <div class="row">
            <div class="side-pane-trigger">
                <i class="fa fa-reorder"></i>
            </div>
            <div class="breadcrumb-secondary">
                <i class="fw fw-document "></i> <span class="hidden-xs">Research Papers</span>
            </div>
        </div>
    </div>
</div>
<!-- EOF App  menu -->
<div class="inner-wrapper">
    <!-- left pane wrapper -->
    <div class="left-pane">
        <ul>
            <li>
                <a href="overview.jsp"><i class="fa fa-laptop"></i> Overview</a>
            </li>
            <li class="selected">
                <a href="#"><i class="fw fw-globe"></i> Research Papers</a>
            </li>
            <li>
                <a href="sparql.jsp"><i class="fw fw-statistics"></i> SPARQL Results</a>
            </li>
            <li>
                <a href="#"><i class="fw fw-bar-chart"></i> Ontology</a>
            </li>
            <li>
                <a href=""><i class="fw fw-notification"></i> Results</a>
            </li>
        </ul>
    </div>
    <!-- left pane wrapper -->
    <div class="right-pane">
        <!-- BOF App  menu actionbar -->
        <div class="action-bar">
            <a href="overview.jsp" class="btn-action" data-toggle="tooltip" data-placement="top"
               title="Back to Overview">
                <span class="fw-stack fw-lg btn-action-ico">
                    <i class="fw fw-ring fw-stack-2x"></i>
                    <i class="fw fw-left-arrow fw-stack-1x"></i>
                </span> Back to Overview
            </a>
            <a href="rps-add.jsp" class="btn-action" data-toggle="tooltip" data-placement="top" title="Tooltip on top">
                <span class="fw-stack fw-lg btn-action-ico">
                    <i class="fw fw-ring fw-stack-2x"></i>
                    <i class="fw fw-add fw-stack-1x"></i>
                </span> <span class="hidden-xs">Add Research Paper</span>
            </a>
        </div>
        <!-- EOF App  menu actionbar-->


        <div class="container-fluid">
            <div class="row row-centered app-sort-bar">
                <div class="col-centered col-md-5 search">
                    <input type="text" class="form-control" id="search-apps" placeholder="Search Research Paper">
                    <i class="fa fa-2x fa-search"></i>
                </div>
            </div>
            <div class="row row-centered app-listing" id="research-paper-container">
                <!-- BOF listing block -->
            </div>
        </div>
        <!-- /.container -->
        <div id="push"></div>
    </div>
</div>
<div id="footer">
    <div class="container-fluid">
        <div class="footer-text">WSO2 Cloud V: 1.2 . &copy; 2016
            <div class="footer-text">www.slit.lk &copy; 2016 All Rights Reserved.</div>
        </div>
    </div>
</div>
<!-- Model for demote confirmation -->
<div id="rdf-show-modal" class="modal fade">
    <div class="modal-dialog modal-dialog-margin-top-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close close-override" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">RDF Content</h4>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="form">
                            <div class="form-group">
                                <label for="rdf-show-text" class="control-label" id="rdf-show-text-id"></label>
                                <textarea class="form-control" id="rdf-show-text" style="min-height: 300px"
                                          readonly></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.1/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap-3.2.0/bootstrap.min.js"></script>
<!-- include custom js functions -->
<script src="js/custom/custom.js"></script>
<script>

    $('.side-pane-trigger').click(function () {
        var rightPane = $('.right-pane');
        var leftPane = $('.left-pane');
        if (rightPane.hasClass('visible')) {
            rightPane.animate({"left": "0em"}, "slow").removeClass('visible');
            leftPane.animate({"left": "-18em"}, "slow");
            $(this).find('i').removeClass('fa-arrow-left').addClass('fa-reorder');
        } else {
            rightPane.animate({"left": "18em"}, "slow").addClass('visible');
            leftPane.animate({"left": "0em"}, "slow");
            $(this).find('i').removeClass('fa-reorder').addClass('fa-arrow-left');
        }
    });

</script>
<script type="application/javascript">
    $(document).ready(function () {
        $.get("rdf?getAll=true",
              function (data) {
                  if (!$.isEmptyObject(data)) {
                      var content = "";
                      $(data.files).each(function () {
                          content += '<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">' +
                                     '<div class="cloud-app-listing app-color-six">' +
                                     '<a href="#">' +
                                     '<div class="app-icon" style="background: #0498D5 !important;">' +
                                     '<img src="images/rpo/rdf.png" class="square-element">' +
                                     '</div>' +
                                     '<div class="app-name">' +
                                     this +
                                     '</div>' +
                                     '</a>' +
                                     '<a class="dropdown-toggle app-extra" data-toggle="dropdown">' +
                                     '<i class="fa fa-ellipsis-v"></i>' +
                                     '<span class="sr-only">Toggle Dropdown</span>' +
                                     '</a>' +
                                     '<ul class="dropdown-menu app-extra-menu" role="menu">' +
                                     '<li><a href="#" onclick="loadRDF(\'' + this + '\') ">View RDF</a></li>' +
                                     '<li><a href="#">Delete</a></li>' +
                                     '</ul>' +
                                     '</div>' +
                                     '</div>';
                      });
                      $("#research-paper-container").html(content);
                  }
              });
    });
</script>
<script type="application/javascript">
    function loadRDF(fileName) {
        $("#rdf-show-text-id").text(fileName);
        $.get("rdf?fileName=" + fileName,
              function (data) {
                  if (!$.isEmptyObject(data)) {
                      $("#rdf-show-text").val(data);
                      $('#rdf-show-modal').modal({show: true});
                  }
              });
    }
</script>
</body>
</html>
