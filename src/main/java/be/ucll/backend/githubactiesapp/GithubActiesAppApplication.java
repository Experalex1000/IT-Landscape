package be.ucll.backend.githubactiesapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class GithubActiesAppApplication {

    @GetMapping("/")
    public String get(){
        return "Github Actions App";
    }
    public static void main(String[] args) {
        SpringApplication.run(GithubActiesAppApplication.class, args);
    }

}
