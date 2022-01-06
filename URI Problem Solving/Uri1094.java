import java.util.Scanner;
public class Uri1094 {
    public static void main(String[] args) {
        int testCase;
        Scanner input = new Scanner(System.in);
        testCase = input.nextInt();
        int totalAnimal;
        int totalRabbits=0;
        int totalFrogs=0;
        int totalRats=0;


        while(testCase!=0){
            int number;
            char sign;
            number = input.nextInt();
            sign = input.next().charAt( 0 );

            if(sign=='C' || sign=='c') totalRabbits+=number;
            else if(sign=='R' || sign=='r') totalRats+=number;
            else totalFrogs+=number;

            testCase--;
        }

        totalAnimal = totalFrogs+totalRabbits+totalRats;
        float percentageOfRabbits;
        float percentageOfFrogs;
        float percentageOfRats;

        percentageOfFrogs = (totalFrogs/(float)totalAnimal)*100;
        percentageOfRabbits = (totalRabbits/(float)totalAnimal)*100;
        percentageOfRats = (totalRats/(float)totalAnimal)*100;

        System.out.println("Total: "+totalAnimal+" cobaias");
        System.out.println("Total de coelhos: "+totalRabbits);
        System.out.println("Total de ratos: "+totalRats);
        System.out.println("Total de sapos: "+totalFrogs);
        System.out.printf("Percentual de coelhos: %.2f %%\n",percentageOfRabbits);
        System.out.printf("Percentual de ratos: %.2f %%\n",percentageOfRats);
        System.out.printf("Percentual de sapos: %.2f %%\n",percentageOfFrogs);
    }
}
