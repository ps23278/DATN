package com.poly.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.poly.entity.Role;


@Repository
public interface RoleRepo extends JpaRepository<Role, String>{

}
