package com.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.entity.MatchEvent;

public interface MatchEventRepository extends JpaRepository<MatchEvent,Integer>{

}
