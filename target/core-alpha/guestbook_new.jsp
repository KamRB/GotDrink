<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Got Drink</title>

    <!-- Bootstrap core CSS -->
    <link href="stylesheets/bootstrap.min.css" rel="stylesheet">

	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">

    <!-- Custom styles for this template -->
    <link href="stylesheets/main.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">${guestbookName}</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">
		<div class="starter-template">
		
		<div id="accordion">
		  <h3>Section 1</h3>
		  <div>
		    <p>
		    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
		    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
		    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
		    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
		    </p>
		  </div>
		  <h3>Section 2</h3>
		  <div>
		    <p>
		    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
		    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
		    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
		    suscipit faucibus urna.
		    </p>
		  </div>
		  <h3>Section 3</h3>
		  <div>
		    <p>
		    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
		    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
		    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
		    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
		    </p>
		    <ul>
		      <li>List item one</li>
		      <li>List item two</li>
		      <li>List item three</li>
		    </ul>
		  </div>
		  <h3>Section 4</h3>
		  <div>
		    <p>
		    Cras dictum. Pellentesque habitant morbi tristique senectus et netus
		    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
		    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
		    mauris vel est.
		    </p>
		    <p>
		    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
		    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
		    inceptos himenaeos.
		    </p>
		  </div>
		</div>      
        
    	</div><!-- /.starter-template -->
    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
     <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
  <script>
  $(function() {
    $( "#accordion" ).accordion();
  });
  </script>
  </body>
</html>