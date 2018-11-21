package hello;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class assigns {
    ArrayList<assign> assigns = new ArrayList<>();

    void addassign(assign as){
        assigns.add(as);
    }

    void deleteassign(String name){
        for (assign as : assigns){
            if (as.getName().equals(name)){
                assigns.remove(as);
            }
        }
    }

    void sortassign(char m){
        if(m=='d'){
            //sort by date
            //Collections.sort(assigns);

        }
        if(m=='p'){
            //sort by priority

        }
        if(m=='n'){
            //sort by name
        }
    }

    void printass(char m){
        this.sortassign(m);
        for(assign as : assigns){
            System.out.println(as.getName() + " " + as.getDate());
        }
    }
}
