package com.swcoaching.example1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

//@Controller
@RestController
public class helloController{
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String hello(){
        return "Hello";
    }
}
