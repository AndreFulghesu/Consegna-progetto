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
public class Articoli {
    
    private int numero;
    private String titolo;
    private String contenuto;
    private String img;
    private Utente autore;
    private String categoria;
    
    
    public Articoli(){
        
        this.numero = 0;
        this.titolo = " ";
        this.contenuto = " ";
        this.autore = new Utente();
        this.img = " ";
    }
      
    public void setAutore(Utente Scrittore){
    
        this.autore = Scrittore;
    }
    
    public Utente getAutore()
    {
        return this.autore;
    }
    
    public void setnumero (int number){
        
        this.numero=number;
    }
    
    public int getnumero (){
        
        return this.numero;
    }
    
    public void setTitolo (String title){
        
        this.titolo=title;
    }
    
    public String getTitolo(){
        
        return this.titolo;
    }
    
    public void setcontenuto (String content){
        
        this.contenuto=content;
    }
    
    public String getcontenuto (){
        
        return this.contenuto;
    }
    
    public void setimg (String ima){
        
        this.img=ima;
    }
    
    public String getimp(){
        
        return this.img;
    }
    
    public void setcategoria (String category){
        
        this.categoria=category;
    }
    
    public String getcategoria (){
        
        return this.categoria;
        
    }
    
    
}
