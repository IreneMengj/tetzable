package com.tetzable.api.version;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.stream.Collectors;

@RestController
public class VersionController {

    @GetMapping("/version")
    public String getVersion(){
        return "version 1.0";
    }

    @GetMapping("/version2")
    public String getVersion2(){
        return System.getenv().entrySet().stream().map(e -> e.getKey() + "=" + e.getValue()).collect(Collectors.joining("; "));
    }

    @GetMapping("/")
    public String health(){
        return "";
    }


}
