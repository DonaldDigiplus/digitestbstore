package com.sdgdev.DigiposBackend.GestionUsers.RestFlux;


import com.sdgdev.DigiposBackend.GestionUsers.Models.AppRole;
import com.sdgdev.DigiposBackend.GestionUsers.Repositories.AppRoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import javax.validation.Valid;
import java.util.Date;

@CrossOrigin("*")
@RestController
@RequestMapping("/approle")
public class AppRoleController {
    @Autowired
    AppRoleRepository appRoleRepository;

    @GetMapping
    public Flux<AppRole> getAppRoles(){
        return appRoleRepository.findAll();
    }

    @GetMapping("/{id}")
    public Mono<AppRole> getAppRole(@PathVariable Integer id){
        return appRoleRepository.findById(id);
    }

    @PostMapping("/save")
    @ResponseStatus(HttpStatus.CREATED)
    public Mono<AppRole> createAppRole(@Valid @RequestBody AppRole appRole){
        return appRoleRepository.save(appRole);
    }

    @PutMapping("/{id}")
    public Mono<AppRole> updateAppRole(@RequestBody AppRole appRole, @PathVariable Integer id){
        return appRoleRepository.findById(id)
                .map((a) -> {
                    a.setRolename(appRole.getRolename());
                    a.setDate(new Date());
                    return a;
                }).flatMap( a -> appRoleRepository.save(a));
    }

    @DeleteMapping("/{id}")
    public Mono<Void> deleteAppRole(@PathVariable Integer id){
        return appRoleRepository.deleteById(id);
    }
}
