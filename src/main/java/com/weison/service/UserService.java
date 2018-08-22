package com.weison.service;

import com.weison.model.User;

import java.util.List;

public interface UserService {
    User findById(Long id);

    User findByUsername(String username);

    List<User> findAll();
}
