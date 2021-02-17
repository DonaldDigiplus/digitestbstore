package com.sdgdev.DigiposBackend.Configurations;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration//car c'est une classe de configuration
@EnableWebSecurity//pour activer la securiter web
public class SecurityConfigure extends WebSecurityConfigurerAdapter {

    protected void configure(HttpSecurity http) throws Exception {
        //ici on va definir les droits acces et les filtres

        http.csrf().disable();//pour desactiver les failles csrf
        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
        http.authorizeRequests().antMatchers("/login/**","/register/**","/**").permitAll();

        http.authorizeRequests().anyRequest().authenticated();//pour indiquer à spring que toutes les ressource doivent etre authentifier
        //http.addFilter(new JWTauthentificationFilter(authenticationManager()));
        //http.addFilterBefore(new JWTauthorizationFilter(),  UsernamePasswordAuthenticationFilter.class);

        http.logout().logoutUrl("/logout");
        http.logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .logoutSuccessUrl("/?logout").deleteCookies("remember-me").permitAll()
                .and()
                .rememberMe();
        http.formLogin().failureForwardUrl("/login?error");
    }

}
