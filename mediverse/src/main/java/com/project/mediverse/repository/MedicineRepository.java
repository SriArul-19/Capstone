package com.project.mediverse.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.mediverse.entity.Medicine;

@Repository
public interface MedicineRepository extends JpaRepository<Medicine, Long> {

	// Search by name (partial match)
    List<Medicine> findByNameContainingIgnoreCase(String name);

    // Search by category (partial match)
    List<Medicine> findByCategoryContainingIgnoreCase(String category);

    // Find medicines that are low in stock
    List<Medicine> findByStockQuantityLessThan(int quantity);
    
}