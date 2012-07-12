package com.todc.addressbook.web;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * @author Tim O'Donnell (odonnellt@gmail.com)
 */
@Controller
public class SampleController {

    private static final Logger LOG = LoggerFactory.getLogger(SampleController.class);

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() throws Exception {
        LOG.debug("start SampleController > index");

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
