/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ea.photography.controller;

import ea.photography.domain.Post;
import ea.photography.service.PostService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author 984325
 */
@Controller
public class RestController {
    @Autowired
    private PostService postService;

    public void setPostService(PostService postService) {
        this.postService = postService;
    }
    
    @RequestMapping(value = "/WSList", method = RequestMethod.GET)
    public @ResponseBody List<Post> list(){
        return postService.getAllPost();
    }
}
