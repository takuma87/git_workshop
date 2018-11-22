package hello;

import java.util.ArrayList;
import java.util.Comparator;

public class assigns {
    private ArrayList<assign> assigns = new ArrayList<>();

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
            assigns.sort(Comparator.comparing(assign::getDate));

        }
        if(m=='p'){
            //sort by priority
            assigns.sort(Comparator.comparing(assign::getPriority) );
        }
        if(m=='n'){
            //sort by name
            assigns.sort(Comparator.comparing(assign::getName) );
        }
    }

    void printass(char m){
        this.sortassign(m);
        for(assign as : assigns){
            System.out.println(as.getName() + " " + as.getDate());
        }
    }
}
