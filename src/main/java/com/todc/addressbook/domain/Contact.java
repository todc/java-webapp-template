package com.todc.addressbook.domain;


import org.apache.commons.lang.builder.ToStringBuilder;

import javax.persistence.*;


/**
 * @author Tim O'Donnell (tim.odonnell@imperva.com)
 */
@Entity
@NamedQuery(name = "Contact.findAll", query = "SELECT c FROM Contact c ORDER BY last_name ASC")
@Table(name = "contacts")
public class Contact {


    // ----------------------------------------------------- Instance Variables


    @Id
    @Column(name = "id")
    private Long id;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "email")
    private String email;


    // --------------------------------------------------------------- Mutators


    public Long getId() {
        return id;
    }

    public void setId(Long p_id) {
        id = p_id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String p_firstName) {
        firstName = p_firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String p_lastName) {
        lastName = p_lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String p_email) {
        email = p_email;
    }


    // --------------------------------------------------------- Public Methods


    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
