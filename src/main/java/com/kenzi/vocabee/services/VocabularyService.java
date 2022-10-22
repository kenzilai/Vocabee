package com.kenzi.vocabee.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kenzi.vocabee.models.Vocabulary;
import com.kenzi.vocabee.repositories.VocabularyRepository;

@Service
public class VocabularyService {

	@Autowired
	private VocabularyRepository vocabRepo;
	
	public List<Vocabulary> findAllVocabularies() {
		return (List<Vocabulary>) this.vocabRepo.findAll();
	}
	
	public List<Vocabulary> findUserVocabularies(Long id) {
		return (List<Vocabulary>) this.vocabRepo.findAllByUserId(id);
	}
}
