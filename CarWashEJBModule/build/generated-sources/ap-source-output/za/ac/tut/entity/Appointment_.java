package za.ac.tut.entity;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.entity.Payment;
import za.ac.tut.entity.Service;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2024-05-08T14:37:56")
@StaticMetamodel(Appointment.class)
public class Appointment_ { 

    public static volatile SingularAttribute<Appointment, Long> customerID;
    public static volatile SingularAttribute<Appointment, Payment> payment;
    public static volatile SingularAttribute<Appointment, Long> id;
    public static volatile ListAttribute<Appointment, Service> services;
    public static volatile SingularAttribute<Appointment, Date> appointmentDate;

}