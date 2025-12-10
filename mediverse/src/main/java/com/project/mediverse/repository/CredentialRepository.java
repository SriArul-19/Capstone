package com.project.mediverse.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.project.mediverse.entity.Credential;

public interface CredentialRepository extends JpaRepository<Credential,String>
{
	String findCredentialByUserId(String userId);
}
