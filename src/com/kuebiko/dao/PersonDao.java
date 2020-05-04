package com.kuebiko.dao;

import java.util.List;
import java.util.Optional;

import com.kuebiko.dao.entity.PersonEntity;

public interface PersonDao {
	String save(PersonEntity entity);
	List<PersonEntity> findAll();
	PersonEntity findById(int pid);
	int deleteById(int pid);
	String update(PersonEntity entity);
	PersonEntity findByUserid(String userid);
	Optional<PersonEntity> findLoginUser(String email, String password);
	int deleteByEmailId(String email);
}
