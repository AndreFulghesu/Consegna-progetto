package unica.model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Andrea
 */


import unica.model.Connessione;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import unica.model.UtenteFactory;
import unica.model.ArticoliFactory;





public class ArticoliFactory {
    
    private ArrayList<Articoli> listaArticoli = new ArrayList<Articoli>();
    private static ArticoliFactory elenco;
    
     public static ArticoliFactory getInstance()
    {
        if(elenco==null)
        {
            elenco = new ArticoliFactory();
        }
        return elenco;
    }
    
    
     
    
    
    private ArticoliFactory (){
        
        Articoli primo= new Articoli();
        
        primo.setnumero(1);
        primo.setTitolo("Crollo Bitcoin, sotto i 7000 dollari!");
        primo.setcategoria("Economia");
        UtenteFactory utente=UtenteFactory.getCreazione();
        Utente author=utente.getUtenteID(0);
        primo.setAutore(author);
        
        Articoli secondo = new Articoli();
        secondo.setnumero(1);
        secondo.setTitolo("Maltempo in Sardegna, danni in ospedale");
        secondo.setcategoria ("Cronaca");
        Utente autore2 = utente.getUtenteID(1);
        secondo.setAutore(autore2);
        
        Articoli terzo = new Articoli ();
        terzo.setnumero(2);
        terzo.setTitolo("Sequestrati 900mila prodotti in un negozio del torinese");
        terzo.setcategoria("Cronaca");
        Utente autore3 = utente.getUtenteID(2);
        terzo.setAutore(autore3);
        
        
        listaArticoli.add(primo);
        listaArticoli.add(secondo);
        listaArticoli.add (terzo);
        
    }
    
    public Articoli getArticoloID(int id_Articolo){
    
        for(Articoli news : listaArticoli){
        
            if(news.getnumero()==id_Articolo)
                return news;
        }
        return null;
    }
    
    
    public ArrayList<Articoli> getArticoliCategoria (String Category){
        
         ArrayList<Articoli> listaCategory = new ArrayList<Articoli>();
         for(Articoli news : listaCategory){
        
            if(news.getAutore().equals(Category))
            {
                listaCategory.add(news);
            }
        }
        return listaCategory;
         
        
    }
    
     public ArrayList<Articoli> getListaArticoliUTENTE(Utente utente)
    {
        ArrayList<Articoli> listaArticoli = new ArrayList<Articoli>();
        
        for(Articoli news : listaArticoli)
        {
            if(news.getAutore().equals(utente))
                listaArticoli.add(news);
        }
        return listaArticoli;
    }
    
    
    public ArrayList<Articoli> getAllArticoli (){
        
        return listaArticoli;
        
    }
    
    public ArrayList<Articoli> searchNewsByQueryStr(String query_str)
    {
        ArrayList<Articoli> lista_news = new ArrayList<Articoli>();
        try
        {
            //Prevenire sql injection con i PreparedStatement
            Connection conn = Connessione.getInstance().getConnection();
            String sql ="Select * from notizia where titolo like '%"+query_str+"%'";
            System.out.println(sql);
            Statement stmt = conn.createStatement();
            ResultSet set = stmt.executeQuery(sql);
            while(set.next())
            {
                int id = set.getInt("id");
                String titolo = set.getString("titolo");
                String content = set.getString("content");
                String img = set.getString("img");
                int id_autore = set.getInt("autore");
                Utente u = UtenteFactory.getCreazione().getUtenteID(id_autore);
                String categoria = set.getString("categoria");
                
                Articoli news = new Articoli();
                news.setnumero(id);
                news.setAutore(u);
                news.setcategoria(categoria);
                news.setimg(img);
                news.setTitolo(titolo);
                
               
                lista_news.add(news);           
            }
            
            stmt.close();
            conn.close();
        }catch(SQLException e)
        {
            // nel caso la query fallisca (p.e. errori di sintassi)
            // viene sollevata una SQLException
            Logger.getLogger(UtenteFactory.class.getName()).log(Level.SEVERE, null, e);
        }
        return lista_news;
    }
    
    
}

