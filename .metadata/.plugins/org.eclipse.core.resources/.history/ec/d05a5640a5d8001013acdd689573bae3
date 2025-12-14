package com.project.mediverse.entity;



import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
public class OrderCancellationRequest {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long cancellationId;

    @ManyToOne
    @JoinColumn(name = "order_id", nullable = false)
    private Order order;

    @ManyToOne
    @JoinColumn(name = "admin_id", nullable = false)
    private Admin admin;

    @Column(nullable = false)
    private String cancellationReason;

    @Column(nullable = false)
    private String status;  // Pending, Approved, Rejected

    @Column(nullable = false)
    private LocalDate requestDate;

    // Getters and Setters
    public Long getCancellationId() {
        return cancellationId;
    }

    public void setCancellationId(Long cancellationId) {
        this.cancellationId = cancellationId;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public String getCancellationReason() {
        return cancellationReason;
    }

    public void setCancellationReason(String cancellationReason) {
        this.cancellationReason = cancellationReason;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public LocalDate getRequestDate() {
        return requestDate;
    }

    public void setRequestDate(LocalDate requestDate) {
        this.requestDate = requestDate;
    }
}

