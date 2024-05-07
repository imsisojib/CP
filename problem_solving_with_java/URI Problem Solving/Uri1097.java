public class Uri1097 {
    public static void main(String[] args) {
        int i=1;
        int j=7;
        for(int k = 1; k<6; k++){
            for(int l=1; l<4; l++){
                System.out.println("I="+i+" J="+j);
                j--;
            }
            j+=5;
            i+=2;
        }
    }
}
