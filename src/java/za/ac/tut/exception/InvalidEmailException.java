/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.exception;

import javax.ejb.EJBException;

/**
 *
 * @author sibus
 */
public class InvalidEmailException extends EJBException{

    public InvalidEmailException(String message) {
        super(message);
    }
    
}
