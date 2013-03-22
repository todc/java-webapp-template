package com.todc.addressbook.web;


import com.todc.addressbook.domain.Contact;
import com.todc.addressbook.repository.ContactRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;


/**
 * @author Tim O'Donnell (odonnellt@gmail.com)
 */
@Controller
public class SampleController {

    private static final Logger LOG = LoggerFactory.getLogger(SampleController.class);


    // ----------------------------------------------------- Instance Variables


    @Autowired
    private ContactRepository repo;


    // --------------------------------------------------------------- Mutators


    public ContactRepository getRepo() {
        return repo;
    }

    public void setRepo(ContactRepository p_repo) {
        repo = p_repo;
    }


    // --------------------------------------------------------- Public Methods


    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() throws Exception {
        LOG.debug("start SampleController > index");

        List<Contact> contacts = repo.findAll();
        LOG.debug("Got " + contacts.size() + " contacts");

        return "index";
    }


    @RequestMapping(value = "/error", method = RequestMethod.GET)
    public String error(String throwError) throws Exception {
        LOG.debug("start SampleController > error");

        if (throwError != null) {
            try {
                throw new Exception("Intentionally throwning an error");
            } catch (Exception ex) {
                LOG.error("An unexpected error occurred", ex);
                throw ex;
            }
        }

        return "index";
    }
    
}
