

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Cart | DVD-Shopper</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
    <script type="text/javascript" src="js/jquery-latest.js"></script>
    <script type="text/javascript" src="js/jquery.autocomplete.js"></script>
    <script type="text/javascript" src="js/jquery.bgiframe.min.js"></script>
    <script type="text/javascript" src="js/jquery.dimensions.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <style>
        #showMore 
        div{ display:none;
        }
        .tb5 {
            border:2px solid #456879;
            border-radius:10px;
            height: 22px;
            width: 230px;
        }
    </style>
    <script>
        $(document).ready(function () {
            size_div = $("#showMore div").size();
            x = 108;
            $('#showMore div:lt(' + x + ')').show();
            $('#loadMore').click(function () {
                x = (x + 108 <= size_div) ? x + 108 : size_div;
                $('#showMore div:lt(' + x + ')').show();
            });
        });
    </script>
</head><!--/head-->