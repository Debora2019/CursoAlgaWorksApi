package com_algaworks_algamoney_api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com_algaworks_algamoney_api.model.Categoria;
import com_algaworks_algamoney_api.repository.CategoriaRepository;

@RestController
@RequestMapping(path = "/categorias")
public class CategoriaController{

    @Autowired
    private CategoriaRepository catRepo;

    @GetMapping
    public List<Categoria> listar() {
        return catRepo.findAll();
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public void criar(@RequestBody Categoria categoria) {
       Categoria categoriaSalva = catRepo.save(categoria);
    }
    
}
