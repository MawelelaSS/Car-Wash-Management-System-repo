/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.exception;

/**
 *
 * @author sibus
 */
public class EmptySignInFieldsException extends RuntimeException{

    public EmptySignInFieldsException(String message) {
        super(message);
    }
    
}
