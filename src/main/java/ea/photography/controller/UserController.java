/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ea.photography.controller;

import ea.photography.domain.User;
import ea.photography.service.UserService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
    
    @Autowired
    private UserService userService;
    

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String displayRegister(@ModelAttribute("newUser") User user)
            throws Exception {
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@Valid @ModelAttribute("newUser") User user, BindingResult bindingResult)
            throws Exception {
        if(bindingResult.hasErrors()){
            return "register";
        }
        userService.createUser(user);
        return "login";
    }
    
//    @RequestMapping
//    public String login() {
//        
//    }

}
