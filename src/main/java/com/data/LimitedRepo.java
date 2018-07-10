package com.data;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LimitedRepo extends JpaRepository<LimitedData, Integer> {

}
