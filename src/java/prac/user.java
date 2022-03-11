package prac;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="USERROLE")
public class user implements Serializable {
    
    @Id
    @Column(name="UID")
    private int id;
    
    
    @Column(name="UNAME")
    private String name;
    public user(){}
    
    
    public int getId(){
        return id;
    }
    public void setId(int id){
        this.id=id;
    }
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name=name;
    }
       
}
