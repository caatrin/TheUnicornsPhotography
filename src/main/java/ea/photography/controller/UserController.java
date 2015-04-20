/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ea.photography.controller;

import ea.photography.domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

    @RequestMapping(value = "/displayregister", method = RequestMethod.GET)
    public String displayRegister(@ModelAttribute("newUser") User user)
            throws Exception {
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@ModelAttribute("newUser") User user)
            throws Exception {
        return "login";
    }

}