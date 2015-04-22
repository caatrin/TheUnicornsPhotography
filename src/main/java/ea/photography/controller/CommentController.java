/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ea.photography.controller;

import ea.photography.domain.Comment;
import ea.photography.service.CommentService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class CommentController {
    
    @Autowired
    private CommentService commentService;
    
    @RequestMapping(value = "/postDetail/addComment", method = RequestMethod.POST)
    public String addComment(@Valid @ModelAttribute("comment") Comment comment,
                                    BindingResult br) {
        if(br.hasErrors()) {
            return "postDetail/" + comment.getPost().getPostId();
        }
        System.out.println("postId" + comment.getPost().getPostId());
        commentService.createComment(comment);
        return "redirect:/postDetail/" + comment.getPost().getPostId();
    }
    
    
}
