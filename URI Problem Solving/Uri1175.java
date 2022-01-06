import java.util.*;


public class Uri1175 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        ArrayList<Integer> store = new ArrayList<>();
        int checkLoop = 20;
        while(checkLoop!=0){
            store.add(input.nextInt());
            checkLoop--;
        }

        Collections.reverse(store);
        for(int i=0; i<20; i++){
            System.out.println("N["+i+"] = "+store.get(i));
        }
    }
}
