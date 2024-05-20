/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import za.ac.tut.entity.Customer;
import za.ac.tut.entity.CustomerFacadeLocal;
import za.ac.tut.exception.BlankCarDetailsException;
import za.ac.tut.exception.EmptySignInFieldsException;
import za.ac.tut.exception.InvalidEmailException;
import za.ac.tut.exception.InvalidPhoneNumberException;
import za.ac.tut.exception.UserAlreadyExistException;
import za.ac.tut.exception.UserDoNotExistException;

/**
 *
 * @author sibus
 */
public class CarWashManager {

    private Connection connection;

    public CarWashManager() {
    }

    public boolean isBlank(String name, String phoneNumber, String email, String password, String confirmPassword) {

        if ((name.length() != 0 && phoneNumber.length() != 0 && email.length() != 0 && password.length() != 0 && confirmPassword.length() != 0)) {
            return true;
        } else {
            throw new EmptySignInFieldsException("name, phoneNumber, email, password, confirmPassword Fields must not be blank");
        }
    }

    public boolean isBlank(String name, String phoneNumber, String email, String password) {
        return (name.length() != 0 || phoneNumber.length() != 0 || email.length() != 0 || password.length() != 0);
    }

    public boolean isBlank(String registration, String manufacturer, String model, Integer modelYear) {
        if (registration.length() != 0 || manufacturer.length() != 0 || model.length() != 0 || modelYear.toString().length() != 0) {
            return true;
        } else {
            throw new BlankCarDetailsException("All car details must not be blank");
        }

    }

    
    //check phone number length 
    
    public boolean checkNumberLength(int length) {
             if(length==10){
                 return true;
             }else{
                 throw new InvalidPhoneNumberException("A phone Number Must be 10 Digits Long");
             }
        }
    public boolean isPassWordValid(String password, String confirmPassword) {
        /* <p>must be at least 10 keys</p>
        <p>Consist of letters, special characters and numbers.</p>
        <p>At least two of the letters must be uppercase</p>
        <p>At least two of the letters must be lowercase</p>
        <p>The @ and # special characters must not be part of the password</p>*/

        boolean length = false;
        boolean containLetter = false;
        boolean specialChar = false;
        boolean isNumber = false;
        boolean uppercases = false;
        boolean lowercases = false;
        boolean containForbiddenChar = false;
        int upperCounter = 0;
        int lowerCounter = 0;

        for (int i = 0; i < password.length(); i++) {
            char ch = password.charAt(i);

            if (password.length() <= 10) {
                length = true;
            }
            if (Character.isLetter(ch)) {
                containLetter = true;
                if (Character.isUpperCase(ch)) {
                    upperCounter++;
                } else {
                    if (Character.isLowerCase(ch)) {
                        lowerCounter++;
                    }

                }
            }
            if (Character.isDigit(ch)) {
                isNumber = true;
            }
            if (!Character.isDigit(ch) && !Character.isLetter(ch)) {
                specialChar = true;
                if (password.contains("@") || password.contains("#")) {
                    containForbiddenChar = true;
                }
            }
        }

        if (length == true && isNumber == true && specialChar == true && containForbiddenChar == false && upperCounter >= 2 && lowerCounter >= 2 && password.equals(confirmPassword) == true) {
            return true;
        }
        return false;
    }

    public boolean AunthenticateCustomer(String password, Customer customer) {
        // Customer customer = manager.find(username);
        if (customer.getPassword().equals(password)) {
            return true;
        }
        return false;

    }

    public boolean AunthenticateAdmin(String username, String password, String rootUsername, String rootPassword) {
        if (username.equals(rootUsername) && password.equals(rootPassword)) {
            return true;
        }
        return false;

    }

    public boolean AunthenticateCarWasher(String username, String password, String washerUsername, String washerPassword) {
        if (username.equals(washerUsername) && password.equals(washerPassword)) {
            return true;
        }
        return false;
    }

    public boolean isEmailValid(String email) throws InvalidEmailException {
        if (email != null && !email.isEmpty()) {
            return true;

        } else {
            throw new InvalidEmailException("Invalid email input");
        }
    }
    public boolean doesUserExist(String phoneNumber, List<Customer> findAll) {
        boolean results = false;
       for (int i = 0; i < findAll.size(); i++) {
           Customer get = findAll.get(i);
           if (!get.getPhoneNumber().equals(phoneNumber)) {
               results = true;
           }else{
               throw new UserAlreadyExistException("The User Already Exist");
           }
       }
        return results;
  
    }

}
