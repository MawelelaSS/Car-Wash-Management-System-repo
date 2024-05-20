package za.ac.tut.entity;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entity.Appointment;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2024-05-08T14:37:56")
@StaticMetamodel(Employee.class)
public class Employee_ { 

    public static volatile ListAttribute<Employee, Appointment> appointments;
    public static volatile SingularAttribute<Employee, String> gender;
    public static volatile SingularAttribute<Employee, Date> dob;
    public static volatile SingularAttribute<Employee, String> name;
    public static volatile SingularAttribute<Employee, Long> id;
    public static volatile SingularAttribute<Employee, String> position;
    public static volatile SingularAttribute<Employee, Double> salary;

}