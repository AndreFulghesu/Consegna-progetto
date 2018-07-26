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
import java.util.ArrayList;


public class UtenteFactory {
    
    private static UtenteFactory creazione;
    private ArrayList<Utente> elencoUtenti = new ArrayList<Utente>();
    

    

public static UtenteFactory getCreazione (){

        if (creazione==null){

            creazione= new UtenteFactory();
        }
        
            return creazione;

}

private UtenteFactory () {
    
    Utente utente1 = new Utente();
        utente1.setnumero(0);
        utente1.setNome("Andrea");
        utente1.setCognome("Fulghesu");
        utente1.setEmail("andrea@gmail.com");
        utente1.setPassword("12345");
        
    Utente utente2 = new Utente();

        utente2.setnumero(1);
        utente2.setNome ("Giorgio");
        utente2.setCognome ("Dessì");
        utente2.setEmail ("giorgio.s@gmail.com");
        utente2.setPassword("98765");
        
        elencoUtenti.add(utente1);
        elencoUtenti.add(utente2);
        
}

public ArrayList<Utente> getTuttiUtenti(){
    
        return elencoUtenti;
    }

public Utente getUtenteID(int id) {
    
    
        for(Utente user : elencoUtenti)
        {
            if(user.getnumero()==id)
            {
                return user;
            }
        }
        return null;
    }


}


