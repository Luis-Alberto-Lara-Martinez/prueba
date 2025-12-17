package com.example.prueba.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class PruebaController {

    @GetMapping("/prueba")
    public String prueba() {
        return "¡Hola! Este es un controlador de prueba funcionando correctamente.";
    }

    @GetMapping("/saludo")
    public String saludo() {
        return "¡Bienvenido a la API de prueba!";
    }
}

