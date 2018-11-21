package hello;

import java.util.Date;

public class assign {
    String name;
    String date;
    int priority;

    void Setassign(String name, String date, int priority){
        this.name = name;
        this.date = date;
        this.priority = priority;
    }

    String getName(){
        return this.name;
    }

    String  getDate(){
        return this.date;
    }

    int getPriority(){
        return this.priority;
    }
}