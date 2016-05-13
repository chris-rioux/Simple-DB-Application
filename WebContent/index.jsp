<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <title>SQL Injector</title>
    <meta name="description" content="This was generated by the Codeply editor and responsive design playground." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="Codeply">

	<!-- Hosted Bootstrap 4 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
    
    <!-- site specific styling -->
    <link rel="stylesheet" href="./css/styles.css" />
    
    <!-- font awesome -->
    <link href="./font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <!-- jQuery DataTable -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css" />
    
</head>
<body class="bg-faded">
 
<nav id="topNav" class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <button class="navbar-toggler hidden-md-up pull-right" type="button" data-toggle="collapse" data-target="#collapsingNavbar">
            ☰
        </button>

        <a class="navbar-brand page-scroll" href="index.jsp">SQL Generator</a>

        <div class="collapse navbar-toggleable-sm" id="collapsingNavbar">
            <ul class="nav navbar-nav">
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="#two">Table</a>
                </li>
            </ul>

            <ul class="nav navbar-nav pull-xs-right">
                <li class="nav-item">
                    <a class="nav-link page-scroll" data-toggle="modal" href="#aboutModal">About</a>
                </li>
            </ul>
        </div>
    </div><!-- /.container -->
</nav>

<c:choose>
	<c:when test="${!empty allData}">

	<section id="two">
		<div class="container wow fadeInUp">
			<div class="col-lg-12">	
				<table id="allData" class="display compact" cellspacing="0" width="100%">
					<thead>
						<tr>
						<c:forEach var="column" items="${headers}">
							<th>${column}</th>
						</c:forEach>	
						</tr>
					</thead>
					<tbody>
						<c:forEach var="row" items="${allData}">
						<tr>
							<c:forEach var="value" items="${row}">
								<td>${value}</td>
							</c:forEach>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				</div>
		</div><!-- /.container -->
	</section><!-- /#two -->
	</c:when>
	<c:otherwise>	
	<section id="one">
		<div class="container wow fadeInUp">
			<div class="row">
				<div class="col-lg-12">
					<form action="getSQLResults.do" method="POST">
					<div class="input-group input-group-lg">
						<span class="input-group-btn">
        					<button class="btn btn-secondary" type="submit">Go!</button>
      					</span>
  						<input type="text" name="query" class="form-control" value="SELECT * FROM employees" aria-describedby="sizing-addon1">
					</div>
					</form>
					<br>			
				</div><!-- /.row -->
				<div class="row" id="schema">
					<img class="img-responsive center-block" src="img/companydb.png"/>
				</div><!-- /.row -->
			</div>
		</div>
	</section>
	<hr>
	</c:otherwise>
</c:choose>

<footer>
	<div class="row">
		<div class="col-lg-12">
			<p class="text-xs-center"><a href="http://www.chrisriouxapplications.com/" target="_blank">Chris Rioux Applications</a> &copy; 2016</p>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3" style="text-align:center">
			<a href="https://twitter.com/chrisrioux_" target="_blank"><i class="fa fa-twitter fa-2x"></i></a>&nbsp;&nbsp;
			<a href="https://www.linkedin.com/in/chrisrioux" target="_blank"><i class="fa fa-linkedin fa-2x"></i></a>&nbsp;&nbsp;
			<a href="https://github.com/chris-rioux" target="_blank"><i class="fa fa-github fa-2x"></i></a>
			</br>
      	</div>
	</div>
</footer>

<!-- Modals -->
<div id="aboutModal" class="modal fade" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title text-xs-center">Full Stack Web Development</h4>
					<p class="text-xs-center">
						Check Out<a href="http://www.chrisriouxapplications.com/"
							target="_blank"> Chris Rioux Applications.com</a>
					</p>
					<div class="modal-body">
						<div class="row">
							<div class="col-xs-4 text-xs-center">
								<ul class="list-inline banner-social-buttons">
									<li id="topButton"><a href="https://twitter.com/chrisrioux_" target="_blank"
										class="btn btn-primary-outline"><i
										class="fa fa-twitter fa-fw"></i>&nbsp;&nbsp;Twitter</a></li><br> 
									<li><a href="https://github.com/chris-rioux" target="_blank"
										class="btn btn-primary-outline"><i
										class="fa fa-github-alt fa-fw"></i>&nbsp;&nbsp;Github</a></li><br>
									<li><a href="https://www.linkedin.com/in/chrisrioux"
										target="_blank" class="btn btn-primary-outline"><i
										class="fa fa-linkedin-square fa-fw"></i>&nbsp;&nbsp;Linkedin</a></li><br>								
								</ul>
							</div>
							<div class="col-xs-8">
								<img class="center-block" src="./img/smallestPic.jpg" alt="">
							</div>
						</div>
						<hr>
						<div class="modal-footer">
							<button class="btn btn-primary center-block" data-dismiss="modal"
								aria-hidden="true">OK</button>
						</div><!-- /.modal-footer -->
					</div><!-- /.modal-body -->
				</div><!-- /.modal-header -->
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /#aboutModal -->

    <!--scripts loaded here-->    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
    
    <script src="js/scripts.js"></script>
    
    <!-- jQuery DataTable -->
    <script src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
    
    <script>
    $(document).ready(function() {
    	$('#allData').DataTable( {
    		scrollY:        '50vh',
            scrollCollapse: true	
    	} );
	} );
    </script>
    
    <!-- jQuery Image Resizer -->
    <script>
    var logoHeight = $('#schema img').height();
    if (logoHeight < 104) {
        var margintop = (104 - logoHeight) / 2;
        $('#schema img').css('margin-top', margintop);
    }
    </script>
    
  </body>
</html>