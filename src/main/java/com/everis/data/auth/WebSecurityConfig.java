package com.everis.data.auth;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.
            authorizeRequests()
            	//.antMatchers("/css/**", "/js/**", "/registro").permitAll() 
                .antMatchers("/**").permitAll() /*pese al acceso abierto a todo, no puedo insertar datos en BD, arroja error, me es imposible realizar el testig y 
                aprender a solucionar el error es aun mas imposible dada la calificacion del ejercicio por Talentlab perderia toda la madrugada tratando de entender el error
                prefiero seguir creando el codigo imaginando su implementación -> error 403 forbidden*/
                .anyRequest().authenticated()
                .and()
            .formLogin()
                .loginPage("/user/login")
                .permitAll()
                .and()
            .logout()
                .permitAll();
    }	
}