/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

/**
 *
 * @author youse
 */
public class calculatrice {
    
    // if + 3eyet l addition
    // and so on
    
    // otherwise method tadkehel liha also the op as a string 
    // nbre1, string op ('+', ...), nbr2)
    public double addition(double nbr1, double nbr2) {
        return nbr1 + nbr2;
    }

    public double difference(double nbr1, double nbr2) {
        return nbr1 - nbr2;
    }

    public double multiplication(double nbr1, double nbr2) {
        return nbr1 * nbr2;
    }

    public double division(double nbr1, double nbr2) {
        if (nbr2 == 0) {
            throw new IllegalArgumentException("Division by zero is not allowed.");
        }
        return nbr1 / nbr2;
    }

}
