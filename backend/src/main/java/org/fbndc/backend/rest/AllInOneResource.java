package org.fbndc.backend.rest;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


@RequestMapping(value = RestContants.ROOT_PATH, produces = MediaType.APPLICATION_JSON_VALUE)
@RestController
public class AllInOneResource {


    @GetMapping(value = "/time", produces = MediaType.TEXT_PLAIN_VALUE)
    public String getServerTime() {
        return LocalDateTime.now().format(DateTimeFormatter.ISO_DATE_TIME);
    }
}