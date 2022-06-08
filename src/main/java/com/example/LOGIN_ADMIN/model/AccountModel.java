package com.example.LOGIN_ADMIN.model;

import com.example.LOGIN_ADMIN.entity.Account;

import java.util.List;

public interface AccountModel {
    boolean create(Account obj);
    boolean update(int id, Account accountUpdate);
    boolean delete(int id);
    List<Account> findAll();
    Account findById(int id);

    Account findByUsername(String username);
}
