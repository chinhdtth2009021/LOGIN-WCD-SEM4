package com.example.LOGIN_ADMIN.service;

import com.example.LOGIN_ADMIN.entity.Account;
import com.example.LOGIN_ADMIN.entity.EntityEnum.AccountStatus;
import com.example.LOGIN_ADMIN.model.AccountModel;
import com.example.LOGIN_ADMIN.model.MySqlAccount;
import com.example.LOGIN_ADMIN.util.SHA512Hasher;

public class AccountService {
    private AccountModel accountModel;

    public AccountService() {
        accountModel = new MySqlAccount();
    }

    public Account register(Account account) {
        String salt = SHA512Hasher.randomString(15);
        String hashedPassword = SHA512Hasher.encode(account.getPassword(), salt);
        String savedPassword = hashedPassword + "." + salt;
        if(accountModel.create(Account.AccountBuilder.anAccount()
                .withFullName(account.getFullName())
                .withRoleId(account.getRoleId())
                .withUsername(account.getUsername())
                .withEmail(account.getEmail())
                .withPhoneNumber(account.getPhoneNumber())
                .withStatus(AccountStatus.ACTIVE)
                .withPassword(savedPassword)
                .build())) {
            return account;
        }
        return null;
    }

    public Account login(String username, String password) {
        Account account = accountModel.findByUsername(username);
        if(account != null && SHA512Hasher.checkPassword(account.getPassword(), password)) {
            return account;
        }
        return null;
    }
}
