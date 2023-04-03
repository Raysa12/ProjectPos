package com.pos.projectpos.common;

public class UserDto {
    Long id;
    String email;
    String password;
    String username;
    String type;

    public UserDto(Long id, String email, String password, String username, String type) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.username = username;
        this.type=type;
    }

    public Long getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}