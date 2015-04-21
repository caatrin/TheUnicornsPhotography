/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ea.photography.controller;

import ea.photography.dao.IPostDao;
import ea.photography.domain.Post;
import ea.photography.service.PostService;
import javax.annotation.Resource;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PostController {

    @Autowired
    private PostService postService;

    @RequestMapping("/")
    public String redirectRoot() {
       // return "redirect:/postList";
        return "index";
    }
    
    @RequestMapping(value = "/posts", method = RequestMethod.GET)
    public String getAll(Model model) {
        model.addAttribute("postList", postService.getAllPost());
        return "postList";
    }
    
    @RequestMapping(value = "/addPost", method = RequestMethod.GET)
    public String getAddPost(@ModelAttribute("post") Post post, BindingResult br) {
        
        return "addPost";
    }
    
    @RequestMapping(value = "/addPost", method = RequestMethod.POST)
    public String addNewPost(@Valid Post post, BindingResult br) {
        if(br.hasErrors()){
            return "addPost";
        }
        
        postService.addNewPost(post);
        return "redirect:/posts";
    }
    
}
