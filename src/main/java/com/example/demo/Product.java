package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int pid;
    private String pname;
    private int cost;



    // Getter method for pid
    public int getPid() {
        return pid;
    }

    // Setter method for pid
    public void setPid(int pid) {
        this.pid = pid;
    }

    // Getter method for pname
    public String getPname() {
        return pname;
    }

    // Setter method for pname
    public void setPname(String pname) {
        this.pname = pname;
    }

    // Getter method for cost
    public int getCost() {
        return cost;
    }

    // Setter method for cost
    public void setCost(int cost) {
        this.cost = cost;
    }
}
