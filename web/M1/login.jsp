<%-- 
    Document   : login
    Created on : 21-lug-2018, 16.33.44
    Author     : Andrea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="StylePages.css"> 
        <meta name='keywords' content="blog,personal,notizie,news,mondo">
        <meta name='description' content='BLOG PERSONALE ANDREA FULGHESU'>
        <meta name='author' content='Andrea Fulghesu'>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
        <!--
        <header class="presentazione">
            
            
            
            <h1 id='intro'>Benvenuti nel nostro sito</h1>
            
                <p id='intro1'>Blog personale per ogni utente con diritto di parola</p>
                
                <img id='immagine' title="news" alt="Foto logo notizie"
                    src="../images/news_logo.jpg" width="240" height="150">
                
                <img id='immagine2' title="news2" alt="foto lofo notizie"
                     src='../images/news_logo.jpg' width="240" height="150">
            
            
        </header>
        -->
        
        <jsp:include page="../Header.jsp" />
        
        <!--
        <nav class="link_pagine">
                
            <ul class="navbar">
                <li><a href="../index.html">Home</a></li>
                    <li><a href="./utente.html">Profilo</a></li>
                        <li><a href="./login.html">Registrati</a></li>
            </ul>
            
       </nav>
        -->
        
        <jsp:include page="../Navbar.jsp" />
        
        <!--
        <div class="sinistra">
            
            
            <input type="text" id="search" name="search" value="Cerca..">
            <input type="submit" value="Search" />
            <hr>
            <h2><strong>Categorie degli articoli</strong></h2>
            <br>
            <hr>
            
            <ol id="lista">
                <li>
                    Sport
                                   
                    <ol>
                        
                        <li>Basket</li>
                        <li>Tennis</li>
                        <li>Calcio</li>
                    </ol>
                    
                    <br>
                </li>
                
                
                <li>Musica</li>
                
                <li>Politica</li>
                
                <li>Attualità</li>
                
                <li>Cultura</li>
                
                <li>Economia</li>
            </ol>
            
            
        </div>
        -->
        <jsp:include page="Sinistra.jsp" />
        
        
        <div class="visita_articolo">
            
            <a href="notizia.html">Visita la pagina degli articoli</a>
            
        </div>
            
        
        
        
        <form class="accedi" action='articoli.html' method="post">
                <label  for="nome"> Nome:</label>
                <input  name ="nome" id="nome" type="text"> 
                <br>
                
                <label  for="surname"> Cognome:</label>
                <input  name ="surname" id="surname" type="text"> 
                <br>
                
                <label  for="psw">Password:</label>
                <input  name="psw" id="psw" type="password"> <br/>
                <br>
                 <input type="submit" value="Accedi">
                
               
            </form>
            
        
    </body>
    
    
</html>
