package hello;

public class assign {
    private String name;
    private String date;
    private int priority;

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