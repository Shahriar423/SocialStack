package com.socialstack.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.socialstack.account.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}
