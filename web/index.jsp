<%-- 
    Document   : index
    Created on : 21-lug-2018, 16.17.01
    Author     : Andrea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Blogger intelletuale</title>
        <meta name='keywords' content="blog,personal,notizie,news,mondo">
        <meta name='description' content='BLOG PERSONALE ANDREA FULGHESU'>
        <meta name='author' content='Andrea Fulghesu'>
        <link rel="stylesheet" type="text/css" href="StylePages.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <!--
        <header class="presentazione">
            
            
            
            <h1 id='intro'>Benvenuti nel nostro sito</h1>
            
                <p id='intro1'>Blog personale per ogni utente con diritto di parola</p>
                
                <img id='immagine' title="news" alt="Foto logo notizie"
                    src="images/news_logo.jpg" width="240" height="150">
                
                <img id='immagine2' title="news2" alt="foto lofo notizie"
                     src='images/news_logo.jpg' width="240" height="150">
            
            
        </header>
        -->
        
        <jsp:include page="Header.jsp" />
        <hr>
        
        <!--
        <nav class="link_pagine">
                
            <ul class="navbar">
                <li><a href="index">Home</a></li>
                    <li><a href="utente">Profilo</a></li>
                        <li><a href="M1\login.html">Registrati</a></li>
            </ul>
            
       </nav>
        -->
        
        <jsp:include page="Navbar.jsp" />
        
        
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
        
        
    </body>
</html>
