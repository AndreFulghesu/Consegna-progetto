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
public class Utente {
    
    private int numero;
    private String nome;
    private String cognome;
    private String email;
    private String password;
    private String Immagine;
    private String tipoUtente;
    
    public Utente () {
    
        this.numero=0;
        this.nome=" ";
        this.cognome=" ";
        this.email=" ";
        this.password=" ";
        this.Immagine=" ";
        this.tipoUtente=" ";
}
    
    public void setNome(String _nome) {
        this.nome = _nome;
        
    }
    
    public String getNome(){
    
        return this.nome;
    }
    
    public void setCognome(String _cognome){
    
        this.cognome = _cognome;
    }
    
    public String getCognome(){
    
        return this.cognome;
    }
    
    public void setnumero( int input){
        
        this.numero= input;
    }
    
    public int getnumero(){
        
        return  this.numero;
    }
    
    public void setEmail(String email)
    {
        this.email = email;
    }
    
    public String getEmail()
    {
        return this.email;
    }
    
   
    public void setPassword(String pass)
    {
        this.password = pass;
    }
    
    public String getPassword()
    {
        return this.password;
    }
    
    
    public void setImmagine(String ima)
    {
        this.Immagine = ima;
    }
    
    public String getImmagine()
    {
        return this.Immagine;
    }
    
    public void setTipoUtente(String tipo){
       tipoUtente=tipo;
   }
   public String getTipoUtente(){
       return tipoUtente;
   }
    
    public boolean Autore(){
       return tipoUtente.equals("autore");
   }
    
}
