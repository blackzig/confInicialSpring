/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.proj.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Michel A. Medeiros
 */
@Controller
public class HomeController {
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String displayHome(Model model) {
        return "/home";
    }
    
  @RequestMapping("/welcome")
  public String welcome(Model model) {
    model.addAttribute("greeting", "Welcome to Web Store!");
    model.addAttribute("tagline", "The one and only amazing webstore");
    return "welcome";
  }
}
