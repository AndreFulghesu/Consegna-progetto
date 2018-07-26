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
public class Commenti {
    
    private int righe;
    private String autore;
    private String contenuto;
    
    public Commenti (){
        
        this.righe=0;
        this.autore=" ";
        this.contenuto=" ";
        
    }
    
    public void setRighe (int Numero){
        
        this.righe=Numero;
    }
    
    public int getRighe (){
        return this.righe;
    }
    
    public void setAutore (String Author){
        
        this.autore=Author;
    }
    
    public String getAutore (){
        
        return this.autore;
        
    }
    
    public void setContenuto (String cont){
        
        this.contenuto=cont;
    }
    
    public String getContenuto (){
        
        return this.contenuto;
        
    }
    
}

