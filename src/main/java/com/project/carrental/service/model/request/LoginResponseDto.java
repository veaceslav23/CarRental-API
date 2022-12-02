package com.project.carrental.service.model.request;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class LoginResponseDto {

    private String username;
    private String token;
}
