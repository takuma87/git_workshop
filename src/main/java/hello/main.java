package hello;

import java.io.*;

public class main {
    public static void main(String args[]) throws Exception {

        assigns assigns = new assigns();

        while (true) {
            System.out.println("Usage: AssignManager [OPTION] \na \tAdd assignment\nr\tRemove assignment\np\tPrint aasignments\nquit\tQuit this program");

            InputStream in = System.in;

            InputStreamReader reader = new InputStreamReader(in);
            char[] a = new char[4];
            reader.read(a);
            if (a[0] == 'a') {
                System.out.println("Please input assignment name, date(ex 20181121),priority(0~10) to add");
                InputStream in2 = System.in;
                InputStreamReader reader2 = new InputStreamReader(in2);
                BufferedReader br = new BufferedReader(reader2);

                String r = br.readLine();
                String[] ab = r.split(" ");
                assign assign = new assign();
                assign.Setassign(ab[0],ab[1],Integer.parseInt(ab[2]));
                assigns.addassign(assign);
                System.out.println("Add complete");
            } else if (a[0] == 'r') {
                System.out.println("Please input assignment name to remove");
                InputStream in2 = System.in;
                InputStreamReader reader2 = new InputStreamReader(in2);
                BufferedReader br = new BufferedReader(reader2);

                String r = br.readLine();
                assigns.deleteassign(r);
                System.out.println("Remove complete");

            } else if (a[0] == 'p') {
                System.out.println("Please input print mode \nd\tsort by date\np\tsort by priority\nn\tsort by name");
                InputStream in2 = System.in;
                InputStreamReader reader2 = new InputStreamReader(in);
                char[] abc = new char[4];
                reader.read(abc);
                assigns.printass(abc[0]);
            } else if (a[0] == 'q' && a[1] == 'u' && a[2] == 'i' && a[3] == 't') {
                return;
            }

        }





    }
}
