package com.sdgdev.DigiposBackend.GestionUsers.Models;


import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.Transient;
import org.springframework.data.domain.Persistable;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.util.Date;

@Table
public class AppRole implements Persistable<Integer> {

    @Id
    private Integer id;
    @Column
    private String rolename;
    @Column
    @JsonFormat(pattern="yyyy-MM-dd", timezone = "GMT+01:00")
    private Date date=new Date();;

    public Integer getId() {
        return id;
    }

    @Override
    public boolean isNew() {
        return true;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
