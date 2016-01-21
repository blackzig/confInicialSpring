<%-- 
    Document   : home
    Created on : 21/10/2015, 23:08:07
    Author     : Michel A. Medeiros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
<!DOCTYPE html>
<html lang="pt-br" ng-app ng-controller="AppCtrl">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX" crossorigin="anonymous">

    </head>
    <body>
        <div  class="container">
            <div class="page-header">
                <h2>Página 1 <small>Hello {{name}}</small></h2>
            </div>
            <div class="jumbotron">
                <h2>Hello {{name || "World"}}!</h2>
                <label for="name">Entre com seu nome</label>
                <input type="text" ng-model="name" class="form-control input-lg" />
            </div>
        </div>
    </body>


    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script> 

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.9/angular.min.js" ></script>
    
    <!-- Controllers -->
    <script type="text/javascript" src="<spring:url value="/resources/js/home.js" />"></script>
    
</html>
