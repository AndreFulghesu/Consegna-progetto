<%-- 
    Document   : notizia
    Created on : 23-lug-2018, 15.44.17
    Author     : Andrea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Notizia</title>
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
                     src="../images/news_logo.jpg" width="240" height="150">
                
        </header>
        -->
         <jsp:include page="Header.jsp" />
         
         <!--

         <nav class="link_pagine">
                
            <ul class="navbar">
                <li><a href="../index.html">Home</a></li>
                    <li><a href="./utente">Profilo</a></li>
                        <li><a href="./login.html">Registrati</a></li>
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
        
        <div class="articolo">
            
        <h1>Mps sotto pressione</h1>
        
        <p>Titolo sospeso due volte in mattinata, poi arriva a perdere oltre il 5%.</p>
        <p> A metà seduta ridotto il calo. Ieri la caduta dell'8% dopo le parole del leghista Borghi che ha auspicato </p>
        <p> un cambio dei vertici e che lo Stato non venda la banca.</p>
        <br>
        <br>
        
       
        <p>MILANO - Mattinata difficile per Monte dei Paschi di Siena. </p>
          <p>  Il titolo, sospeso in avvio, è tornato agli scambi in forte calo e poi dopo</p>
          <p>  un altro breve stop cede ora oltre 4 punti percentuali.</p>
          <p>  Una difficoltà che segue la giornata difficile di ieri,</p>
          <p>  con l'istituto che ha chiuso in calo dell'8,8% a 2,92 euro.</p>
        
          <h2>Economia</h2>
          <h3><strong>Autore:</strong>Giorgio Napolitano</h3>
          <h3>18/05/2018</h3>
        <img title="Banca" alt="Foto Banca" src="../images/Monte_paschi.jpg" width="558" height="335">
        
        
        
        </div>
    </body>
    
</html>
