<%-- 
    Document   : registrasi
    Created on : Apr 12, 2017, 12:13:43 PM
    Author     : edwin < edwinkun at gmail dot com >
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrasi Pengguna</title>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link href="/JWP05UTS/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <style>
            input::-webkit-outer-spin-button,
            input::-webkit-inner-spin-button {
                -webkit-appearance: none;
                margin: 0; 
            }
        </style>
    </head>
    <body>
        <!-- Header -->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Sistem Registrasi</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="/JWP05UTS/admin/LogoutServlet">Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End of Header -->
        
        <!-- Container -->
        <div class="container" style="padding-top: 60px;">
            <form class="form-horizontal" id="form1" action="/JWP05UTS/admin/RegistrasiServlet" method="POST">
                <fieldset>

                    <legend>Registrasi</legend>
                    
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Nama</label>  
                        <div class="col-md-4">
                            <input id="nama" name="nama" placeholder="Nama Anda" class="form-control input-md" type="text">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="singlebutton"></label>
                        <div class="col-md-4">
                            <button id="simpan" type="submit" name="simpan" class="btn btn-primary">Simpan</button>
                        </div>
                    </div>

                </fieldset>
            </form>
            
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>Nama</th>
                    </tr>
                </thead>
                <tbody id="isiTable">
                    <% 
                        String[] data = (String[])session.getAttribute("data");
                        
                        if(data == null)
                            data = new String[0];
                        
                        for(int i = 0; i < data.length; i++) {                                                    
                    %>
                    
                    <tr>
                        <td>
                            <%= data[i] %>
                        </td>
                    </tr>
                    
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
        <!-- End of Container -->
        
        <!-- Footer -->
        <footer class="footer">
            <div class="container">
                <p class="text-muted">JWP - UBL 2017</p>
            </div>
        </footer>
        <!-- End of Footer -->
        
        <script type="text/javascript" src="/JWP05UTS/js/jquery.js"></script>
        <script type="text/javascript" src="/JWP05UTS/js/bootstrap.js"></script>
    </body>
</html>