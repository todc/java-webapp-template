package com.todc.addressbook.web;


import com.todc.addressbook.domain.Contact;
import com.todc.addressbook.repository.ContactRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


/**
 * @author Tim O'Donnell (odonnellt@gmail.com)
 */
@Controller
public class ContactController {

    private static final Logger LOG = LoggerFactory.getLogger(ContactController.class);


    // ----------------------------------------------------- Instance Variables


    @Autowired
    private ContactRepository contactRepo;


    // --------------------------------------------------------------- Mutators


    public ContactRepository getContactRepo() {
        return contactRepo;
    }

    public void setContactRepo(ContactRepository p_contactRepo) {
        contactRepo = p_contactRepo;
    }


    // --------------------------------------------------------- Public Methods


    /**
     * List all contacts.
     *
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView index() throws Exception {
        LOG.debug("start SampleController > index");

        List<Contact> contacts = contactRepo.findAll();

        ModelAndView mav = new ModelAndView("index");
        mav.addObject("contacts", contacts);

        return mav;
    }
    
}
