package com.project.mediverse.entity;

import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name="Orders")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long orderId;

    @ManyToOne
    @JoinColumn(name = "customer_id",nullable = false)
    private Customer customer;

    @OneToMany(mappedBy = "order")
    private List<Medicine> medicines; // Ensure that the mappedBy field matches the field in Medicine entity

    private double totalAmount;
    private String paymentStatus;
    @Column(nullable = false)
    private LocalDate orderedDate;
    
    @ManyToOne
    @JoinColumn(name = "insurance_claim_id")
    private InsuranceClaim insuranceClaim;

    // Getters and Setters
    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public List<Medicine> getMedicines() {
        return medicines;
    }

    public void setMedicines(List<Medicine> medicines) {
        this.medicines = medicines;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public String getPaymentStatus() {
        return paymentStatus;
    }

    public void setPaymentStatus(String paymentStatus) {
        this.paymentStatus = paymentStatus;
    }
    

    public LocalDate getOrderedDate() {
		return orderedDate;
	}

	public void setOrderedDate(LocalDate orderedDate) {
		this.orderedDate = orderedDate;
	}

	public InsuranceClaim getInsuranceClaim() {
        return insuranceClaim;
    }

    public void setInsuranceClaim(InsuranceClaim insuranceClaim) {
        this.insuranceClaim = insuranceClaim;
    }
}
