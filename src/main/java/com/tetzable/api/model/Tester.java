package com.tetzable.api.model;







//@Data
//public class Tester {
//
//    @TableId("id")
//    private int id;
//    private String Name;
//    private String Email;
//    private boolean Info_Stored;
//    private boolean Agreement;
//    private double Earning;
//
//}
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "tester")
public class Tester {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "Name")
    private String name;

    @Column(name = "Email")
    private String email;

    @Column(name = "Info_Stored")
    private boolean infoStored;

    @Column(name = "Agreement")
    private boolean agreement;

    @Column(name = "Earning")
    private double earning;

}
