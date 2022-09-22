/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package unipiloto;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author ingse
 */
public class NameHandler {

    private String name;
    private String date_birth;
    private String age;
    LocalDate date;
    int current_Time = LocalDateTime.now().getHour();

    public NameHandler() {

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate_birth() {
        return date_birth;
    }

    public void setDate_birth(String date_birth) {
        this.date_birth = date_birth;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
       DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
       LocalDate date_birth = LocalDate.parse(this.date_birth, formatter);
       LocalDate current_Time = LocalDate.now();
       
       Period periodo = Period.between(date_birth, current_Time);
       this.age = " "+ periodo.getYears() + " años";
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
      //this.date = LocalDate.parse(getDate_birth());
        
    }

    public int getCurrent_Time() {
        return current_Time;
    }

    public void setCurrent_Time(int current_Time) {
        this.current_Time = current_Time;
    }
    
    
    
}
