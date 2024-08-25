package com.max.bff.entity;

import lombok.Getter;
import lombok.Setter;
import jakarta.persistence.*;

@Entity
@Getter
@Setter
@Table(name = "stock")
public class Stock {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long Id;
    private Long productId;
    private String unit;// mesurement type kg, ltr,gram
    private double productSellingPrice;
    private double productCostPrice;
}
