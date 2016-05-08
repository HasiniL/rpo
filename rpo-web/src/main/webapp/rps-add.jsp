<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
            <a class="navbar-brand" href="#"><img src="images/logo.png" alt="wso2-logo" ></a>
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
                <i class="fw fw-document "></i> <span class="hidden-xs">Research Papers / </span> &nbsp;Add
        </div>
    </div>
</div>
</div><!-- EOF App  menu -->
<div class="inner-wrapper">
    <!-- left pane wrapper -->
    <div class="left-pane">
        <ul>
            <li>
                <a href="overview.jsp"><i class="fa fa-laptop"></i> Overview</a>
            </li>
            <li class="selected">
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
        <!-- BOF App  menu actionbar -->
        <div class="action-bar">
            <a href="rps-show.jsp" class="btn-action">
                    <span class="fw-stack fw-lg btn-action-ico">
                        <i class="fw fw-ring fw-stack-2x"></i>
                        <i class="fw fw-left-arrow fw-stack-1x"></i>
                    </span> <span class="hidden-xs">Back to Research Papers</span>
            </a>
        </div><!-- EOF App  menu actionbar-->


        <div class="container-fluid app-type-listing">
            <div class="row listing padding-bottom-xlg" data-count="8.0">
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-2 ">
                    <div class="cloud-app-type app-color-two cloud-app-type-max" id="1.0"
                         data-description="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. ultricies nec,
                                pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla
                                vel, aliquet nec, vulputate eget, arcu." data-appname="PDF" >
                        <div class="thumbnail icon">
                            <div class="square-element">
                                <img class="" src="images/rpo/pdf.png" alt="">
                            </div>
                        </div>
                        <div class="type-name" >PDF</div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-2">
                    <div class="cloud-app-type app-color-six" id="2.0" data-description="Lorem ipsum dolor sit amet, consectetuer adipiscing elit. ultricies nec,
                                pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla
                                vel, aliquet nec, vulputate eget, arcu." data-appname="RDF" >
                        <div class="thumbnail icon">
                            <div class="square-element">
                                <img class="" src="images/rpo/rdf.png" alt="">
                            </div>
                        </div>
                        <div class="type-name">RDF</div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-2">
                    <div class="cloud-app-type  app-color-seven" id="7.0"   data-description="Nulla consequat massa quis enim. Donec pede justo, fringilla
                                vel, aliquet nec, vulputate eget, arcu." data-appname="DOC" >
                        <div class="thumbnail icon">
                            <div class="square-element">
                                <img class="" src="images/rpo/word.png" alt="">
                            </div>
                        </div>
                        <div class="type-name">DOC</div>
                    </div>
                </div>

            </div>

        </div><!-- /.container -->
        <!-- BOF template block appear on each click -->
        <div class="app-type-info-template" style="display: none">
            <div class="longme" style="display: none">
                <div class="clearfix"></div>
                <div class="col-md-12 long">
                    <div class="row">
                        <div class="col-sm-8 col-md-8 col-lg-7">
                            <h2 class="app-type-name">PDF</h2>
                            <div class="app-description">
                            </div>
                            <div class="button-bar">
                                <a href="#" class="cu-btn cu-btn-md cu-btn-gray"><i class="fa fa-book"></i> Documentation</a>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-4 col-lg-5 description-action">
                            <a href="" class="cu-btn cu-btn-md cu-btn-blue">
                               <span class="fw-stack fw-lg btn-action-ico">
                               <i class="fw fw-ring fw-stack-2x"></i>
                               <i class="fw fw-add fw-stack-1x"></i>
                               </span> Upload...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- EOF template block appear on each click -->
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
<script>
    /**
     * this function use to append description block on app type selection
     * */
    $(document).on('click', '.cloud-app-type', function(){

        $('.listing').find('.longme').detach();
        if($('.cloud-app-type').hasClass('cloud-app-selected')){
            $('.cloud-app-type').removeClass('cloud-app-selected');
            $(this).addClass('cloud-app-selected');
        }else{
            $(this).addClass('cloud-app-selected');

        }

        var width = $( window ).width(),
                currentcount = parseInt($(this).attr('id')),
                appDescription = $(this).attr('data-description'),
                appName = $(this).attr('data-appname'),
                dataCount = parseInt($('.listing').attr('data-count'));

        //content replace with data attributes
        $('.app-type-info-template').find('.app-type-name').html(appName);
        $('.app-type-info-template').find('.app-description').html(appDescription);
        var appendHtml =$('.app-type-info-template').html();


        if(width >=1170){
            if(currentcount%7 == 0){
                $('#'+currentcount+'\\.0').parent().after(appendHtml);
                $('.longme').fadeIn('slow')
            }else{
                var ctest = currentcount+(7- currentcount%7);
                if(ctest > dataCount){
                    $('#'+ dataCount+'\\.0').parent().after(appendHtml);
                    $('.longme').fadeIn('slow')
                }else{
                    $('#'+ctest+'\\.0').parent().after(appendHtml);
                    $('.longme').fadeIn('slow')
                }

            }
        }else if(width >=970){
            if(currentcount%4 == 0){
                $('#'+currentcount+'\\.0').parent().after(appendHtml);
                $('.longme').fadeIn('slow')
            }else{
                var ctest = parseInt(currentcount)+(4- currentcount%4);
                if(ctest > dataCount){
                    $('#'+ dataCount+'\\.0').parent().after(appendHtml);
                    $('.longme').fadeIn('slow')
                }else{
                    $('#'+ctest+'\\.0').parent().after(appendHtml);
                    $('.longme').fadeIn('slow')

                }

            }
        }else if(width >=750 ){
            if(currentcount%2 == 0){
                $('#'+currentcount+'\\.0').parent().after(appendHtml);
                $('.longme').fadeIn('slow')
            }else{
                var ctest = parseInt(currentcount)+1;
                if(ctest > dataCount){
                    $('#'+ dataCount+'\\.0').parent().after(appendHtml);
                    $('.longme').fadeIn('slow')
                }else{
                    $('#'+ctest+'\\.0').parent().after(appendHtml);
                    $('.longme').fadeIn('slow')

                }

            }

        }else if(width <750 ){
            $('#'+currentcount+'\\.0').parent().after(appendHtml);
            $('.longme').fadeIn('slow')

        }


    })

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
<!-- include custom js functions -->
<script src="js/custom/custom.js"></script>
</body>
</html>