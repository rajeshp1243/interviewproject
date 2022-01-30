package com.cts.dao;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cts.model.InterviewDetails;

@Repository
//this is repository class
public interface InterviewRepository extends JpaRepository<InterviewDetails, Integer> {
	
	public InterviewDetails findByInterviewId(int interviewId);
	
	public void findByinterviewId(int interviewId);

	@Query("SELECT i FROM InterviewDetails i WHERE CONCAT(i.interviewQuestion) LIKE %?1%")
	//@Query("SELECT i FROM InterviewDetails i WHERE lower(i.interviewQuestion) like lower(%?1%))")
	public List<InterviewDetails> search(String keyword);
	
	@Query("select i from InterviewDetails i where i.interviewQuestion=:interviewQuestion")
	public List<InterviewDetails>findByInterviewQuestion(@Param("interviewQuestion")String interviewQuestion);

}
