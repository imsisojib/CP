import java.util.Scanner;

public class Uri1049 {
    public static void main(String[] args) {
        String[] storage = {"vertebrado","ave","carnivoro","onivoro","mamifero","herbivoro","invertebrado","inseto","hematofago","anelideo"};

        String firstWord,middleWord,lastWord;
        Scanner input = new Scanner(System.in);
        firstWord = input.next();
        /*if(firstWord.equals( storage[3] )) System.out.println("true");
        else System.out.println("false"); */
        middleWord = input.next();
        lastWord = input.next();

        if(firstWord.equals( storage[0] )&&middleWord.equals( storage[1] )&&lastWord.equals( storage[2] )) System.out.println("aguia");
        else if(firstWord.equals( storage[0] )&&middleWord.equals( storage[1] )&&lastWord.equals( storage[3] )) System.out.println("pomba");
        else if(firstWord.equals( storage[0] )&&middleWord.equals( storage[4] )&&lastWord.equals( storage[3] )) System.out.println("homem");
        else if(firstWord.equals( storage[0] )&&middleWord.equals( storage[4] )&&lastWord.equals( storage[5] )) System.out.println("vaca");
        else if(firstWord.equals( storage[6] )&&middleWord.equals( storage[7] )&&lastWord.equals( storage[8] )) System.out.println("pulga");
        else if(firstWord.equals( storage[6] )&&middleWord.equals( storage[7] )&&lastWord.equals( storage[5] )) System.out.println("lagarta");
        else if(firstWord.equals( storage[6] )&&middleWord.equals( storage[9] )&&lastWord.equals( storage[8] )) System.out.println("sanguessuga");
        else if(firstWord.equals( storage[6] )&&middleWord.equals( storage[9] )&&lastWord.equals( storage[3] )) System.out.println("minhoca");



    }
}
