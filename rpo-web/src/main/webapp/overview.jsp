<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            <a class="navbar-brand" href="#"><img src="images/logo.png" alt="rpo-logo" ></a>
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
        </div><!--/.nav-collapse -->
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
                <i class="fw fw-document "></i> <span class="hidden-xs">Overview</span>
            </div>
        </div>
    </div>
</div><!-- EOF App  menu -->
<div class="inner-wrapper">
    <!-- left pane wrapper -->
    <div class="left-pane">
        <ul>
            <li class="selected">
                <a href="#"><i class="fa fa-laptop"></i> Overview</a>
            </li>
            <li>
                <a href="rps-show.jsp"><i class="fw fw-globe"></i> Research Papers</a>
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
        <div id="push"></div>
    </div>
</div>
<div id="footer">
    <div class="container-fluid">
        <div class="footer-text">www.slit.lk &copy; 2016 All Rights Reserved.</div>
    </div>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.1/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap-3.2.0/bootstrap.min.js"></script>
<!-- include custom js functions -->
<script src="js/custom/custom.js"></script>
<script>

    $('.side-pane-trigger').click(function(){
        var rightPane = $('.right-pane');
        var leftPane = $('.left-pane');
        if (rightPane.hasClass('visible')){
            rightPane.animate({"left":"0em"}, "slow").removeClass('visible');
            leftPane.animate({"left":"-18em"}, "slow");
            $(this).find('i').removeClass('fa-arrow-left').addClass('fa-reorder');
        } else {
            rightPane.animate({"left":"18em"}, "slow").addClass('visible');
            leftPane.animate({"left":"0em"}, "slow");
            $(this).find('i').removeClass('fa-reorder').addClass('fa-arrow-left');
        }
    });

</script>
</body>
</html>
