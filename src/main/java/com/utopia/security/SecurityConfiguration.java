package com.utopia.security;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	
	@Override
	    protected void configure(HttpSecurity http) throws Exception{
	        http.authorizeRequests().antMatchers("/").permitAll();
	 }
	/*
	@Autowired
	DataSource dataSource;
    //We provide the data source for users using the below config method
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    	auth.jdbcAuthentication().dataSource(dataSource);
//        auth.inMemoryAuthentication().withUser("admin").password(passwordEncoder().encode("adminpass")).roles("ADMIN")
//                .and().withUser("aki").password(passwordEncoder().encode("akipass")).roles("USER");
    }

    //We provide request authorization in the below method
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        //Below line will allow any authenticated user to access any resource within the system
        //http.authorizeRequests().anyRequest().authenticated().and().httpBasic();
//    	 http.authorizeRequests().antMatchers("/public").permitAll()
//         .antMatchers("/user").hasAnyRole("ADMIN","USER")
//         .antMatchers("/admin").hasRole("ADMIN")
//         .and().httpBasic();
    	http.authorizeRequests().antMatchers("/admin").hasRole("ADMIN").antMatchers("/user").hasAnyRole("ADMIN", "USER")
		.antMatchers("/").permitAll().and().formLogin();
    }

    @Bean
    public PasswordEncoder passwordEncoder(){
        return  new BCryptPasswordEncoder();
    }
    */
	
	
}
