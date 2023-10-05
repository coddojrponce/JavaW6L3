package com.robertp.testW6L1.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.robertp.testW6L1.models.Comment;


public interface CommentRepository extends CrudRepository<Comment, Long> {

	List<Comment> findAll();
	
	Optional<Comment> findById(Long id);
}
