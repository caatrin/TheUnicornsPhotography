/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ea.photography.controller;

import ea.photography.domain.Comment;
import ea.photography.domain.Post;
import ea.photography.domain.User;
import ea.photography.service.PostService;
<<<<<<< HEAD
import ea.photography.service.UserService;
import javax.annotation.Resource;
=======
import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
>>>>>>> feature_image
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@SessionAttributes(value = {"user"})
public class PostController {

    @Autowired
    private PostService postService;
    
    @Autowired
    private UserService userService;

    private Date timeStamp = new Date();

    @RequestMapping("/")
    public String redirectRoot() {
        // return "redirect:/postList";
        return "index";
    }

    @RequestMapping(value = "/posts", method = RequestMethod.GET)
    public String getAll(Model model, HttpServletRequest request) {
        String email = request.getUserPrincipal().getName();
        User user = userService.getUserByEmail(email);
        model.addAttribute("user", user);
        model.addAttribute("postList", postService.getAllPost());
        return "postList";
    }

    @RequestMapping(value = "/addPost", method = RequestMethod.GET)
    public String getAddPost(@ModelAttribute("post") Post post, BindingResult br) {
        return "addPost";
    }

    @RequestMapping(value = "/addPost", method = RequestMethod.POST)
<<<<<<< HEAD
    public String addNewPost(@Valid @ModelAttribute("post") Post post, BindingResult br, Model model) {
        if(br.hasErrors()){
            return "addPost";
        }
        User user = (User) model.asMap().get("user");
        post.setAuthor(user);
=======
    public String addNewPost(@Valid @ModelAttribute("post") Post post, HttpServletRequest request, BindingResult br) {

        if (br.hasErrors()) {
            return "addPost";
        }
        //upload image
        MultipartFile image = post.getImageFile();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        System.out.println("root directory is " + rootDirectory);
        if (image != null && !image.isEmpty()) {
//			System.out.println("hello from if");
            try {
                DateFormat date = new SimpleDateFormat("MM_dd_YY_hhmm");
                image.transferTo(new File(rootDirectory + "\\resources\\img\\"
                        + "image" + post.getPostId() + "_" + date.format(timeStamp) + ".png"));
                post.setPicturename(image.getOriginalFilename());
            } catch (Exception e) {
                throw new RuntimeException("Image save failed", e);
            }
        }
>>>>>>> feature_image
        postService.addNewPost(post);
        return "redirect:/posts";
    }

    @RequestMapping(value = "/editPost", method = RequestMethod.POST)
    public String getEditPost(@RequestParam Long postId, Model model) {
        model.addAttribute("post", postService.getPostById(postId));
        return "editPost";
    }

    @RequestMapping(value = "/updatePost", method = RequestMethod.POST)
    public String editPost(@Valid @ModelAttribute("post") Post post, BindingResult br) {
        if (br.hasErrors()) {
            return "editPost";
        }

        postService.editPost(post.getPostId(), post);
        return "redirect:/posts";
    }

    @RequestMapping(value = "/deletePost", method = RequestMethod.POST)
    public String deletePost(@RequestParam Long postId, Model model) {
        postService.deletePost(postId);
        return "redirect:/posts";
    }

    @RequestMapping(value = "/postDetail/{postId}", method = RequestMethod.GET)
    public String getPostDetails(@PathVariable Long postId, Model model) {
        Comment comment = new Comment();
        Post post = postService.getPostById(postId);
        model.addAttribute("post", post);
        comment.setPost(post);
        model.addAttribute("comment", comment);
        return "postDetail";
    }

}
