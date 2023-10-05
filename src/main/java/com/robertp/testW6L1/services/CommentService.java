package com.robertp.testW6L1.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.robertp.testW6L1.models.Comment;
import com.robertp.testW6L1.repositories.CommentRepository;


@Service
public class CommentService {
	
	@Autowired
	private CommentRepository cr;
	
	public List<Comment> getAll() {
		
		return cr.findAll();
	}
	
	public Comment getOne(Long id) {
		Optional<Comment> exists = cr.findById(id);
		if(exists.isPresent()) {
			return exists.get();
		}
		
		return null;
	}
	
	public void save(Comment c) {
		cr.save(c);
	}

}
