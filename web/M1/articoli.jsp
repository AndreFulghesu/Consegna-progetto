<%-- 
    Document   : articoli
    Created on : 21-lug-2018, 16.31.47
    Author     : Andrea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <title>Lista Articoli</title>
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
        
        <div class="tabella_utente">
          
               
            <form action="./scriviArticoli.html" target=”_blank”>
            <button type="submit" class="scrivi_articolo" ><strong>Scrivi Articolo</strong></button>  
            </form> 
            
            
        <table id="tabella">
            
            <col />
            <col class="even" />
            <col />
            <col class="even" />
            
            <tr id="riga_uno">
                <th><strong>Data</strong></th>
                <th><strong>Titolo</strong></th>
                <th><strong>Modifica</strong></th>
                <th><strong>Cancella</strong></th>
                </tr>
                <tr>
                <td>02/04/2018</td>
                <td> Nuovo Samsung n^x</td>
                <td><button type="submit">Modifica</button></td>
                <td><button type="submit">Cancella</button></td>
                </tr>
                <tr>
                <td>07/03/2018</td>
                <td>Fabio Aru sulla vetta!</td>
                <td><button type="submit">Modifica</button></td>
                <td><button type="submit">Cancella</button></td>
                
                </tr>
                <tr>
                    <td>09/01/2018</td>
                    <td>Restauro a Palazzo Vecchio</td>
                    <td><button type="submit">Modifica</button></td>
                    <td><button type="submit">Cancella</button></td>
                    
                </tr>
                <tr>
                    <td>09/01/2018</td>
                    <td>Rinvenuti nuovi reperti archeologici</td>
                    <td><button type="submit">Modifica</button></td>
                    <td><button type="submit">Cancella</button></td>
                </tr>
                <tr>
                    <td>15/05/2018</td>
                    <td>Il Sassuolo in Champions</td>
                    <td><button type="submit">Modifica</button></td>
                    <td><button type="submit">Cancella</button></td>
                </tr>
                 
        </table>
            
            
        </div>
        
        
    </body>
</html>
