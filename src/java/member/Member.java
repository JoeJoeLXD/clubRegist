/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package member;

/**
 *
 * @author xd18
 */
import java.io.Serializable;

public class Member implements Serializable {

    private String fullName;
    private String email;
    private String phone;
    private String program;
    private String year;

    public Member() {
        fullName = "";
        email = "";
        phone = "";
        program = "";
        year = "";
    }

    public Member(String fullName, String email, String phone, String program,
            String year) {
        this.fullName = fullName;
        this.email = email;
        this.phone = phone;
        this.program = program;
        this.year = year;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getProgram() {
        return program;
    }

    public void setProgram(String program) {
        this.program = program;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

}

