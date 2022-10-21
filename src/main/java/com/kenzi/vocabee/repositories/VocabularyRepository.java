package com.kenzi.vocabee.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.kenzi.vocabee.models.Vocabulary;

@Repository
public interface VocabularyRepository extends CrudRepository<Vocabulary, Long> {
	List<Vocabulary> findAllByUser(Long user_id);
}
