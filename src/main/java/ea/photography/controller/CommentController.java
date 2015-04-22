/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ea.photography.controller;

import ea.photography.domain.Comment;
<<<<<<< HEAD
import ea.photography.domain.Post;
import ea.photography.domain.User;
=======
>>>>>>> feature_image
import ea.photography.service.CommentService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@SessionAttributes(value = {"user"})
public class CommentController {
    
    @Autowired
    private CommentService commentService;
    
    @RequestMapping(value = "/postDetail/addComment", method = RequestMethod.POST)
    public String addComment(@Valid @ModelAttribute("comment") Comment comment,
                                BindingResult br, Model model) {
        if(br.hasErrors()) {
            return "postDetail/" + comment.getPost().getPostId();
        }
        User user = (User) model.asMap().get("user");
        comment.setUser(user);
        commentService.createComment(comment);
        return "redirect:/postDetail/" + comment.getPost().getPostId();
    }
    
    
}
