package com.project.mediverse.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.mediverse.entity.Admin;

public interface AdminRepository extends JpaRepository<Admin, Long>
{
	Admin findByUsername(String username);
}
