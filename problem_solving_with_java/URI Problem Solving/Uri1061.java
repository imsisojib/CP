//accepted
import java.util.Scanner;

public class Uri1061 {
    public static void main(String[] args) {
        String garbage;
        int dayStart,dayEnd,startedHour,startedMin,startedSec;
        int endHour,endMin,endSec;

        Scanner input = new Scanner(System.in);
        garbage=input.next();
        dayStart=input.nextInt();
        startedHour=input.nextInt();
        garbage=input.next();
        startedMin=input.nextInt();
        garbage=input.next();
        startedSec=input.nextInt();
        garbage=input.next();
        dayEnd = input.nextInt();
        endHour=input.nextInt();
        garbage=input.next();
        endMin=input.nextInt();
        garbage=input.next();
        endSec = input.nextInt();

        if(dayStart==dayEnd){
            int firstDaySec=(23-startedHour)*3600 + (59-startedMin)*60 +(60-startedSec);
            int lastDaySec = (23-endHour)*3600 + (59-endMin)*60 + (60-endSec);

            int totalSec = firstDaySec-lastDaySec;

            int finalDay = totalSec/86400;
            totalSec = totalSec-(finalDay*86400);
            int finalHour = totalSec/3600;
            totalSec = totalSec-(finalHour*3600);
            int finalMin = totalSec/60;
            int finalSec = totalSec-(finalMin*60);

            System.out.printf("%d dia(s)\n",finalDay);
            System.out.printf("%d hora(s)\n",finalHour);
            System.out.printf("%d minuto(s)\n",finalMin);
            System.out.printf("%d segundo(s)\n",finalSec);
        }
        else if((dayStart+1)==dayEnd){
            int firstDaySec=(23-startedHour)*3600 + (59-startedMin)*60 +(60-startedSec);
            int lastDaySec = (23-endHour)*3600 + (59-endMin)*60 + (60-endSec);
            lastDaySec = 86400-lastDaySec;

            int totalSec = firstDaySec+lastDaySec;

            int finalDay = totalSec/86400;
            totalSec = totalSec-(finalDay*86400);
            int finalHour = totalSec/3600;
            totalSec = totalSec-(finalHour*3600);
            int finalMin = totalSec/60;
            int finalSec = totalSec-(finalMin*60);

            System.out.printf("%d dia(s)\n",finalDay);
            System.out.printf("%d hora(s)\n",finalHour);
            System.out.printf("%d minuto(s)\n",finalMin);
            System.out.printf("%d segundo(s)\n",finalSec);
        }

        else{
            int firstDaySec=(23-startedHour)*3600 + (59-startedMin)*60 +(60-startedSec);
            int lastDaySec = (23-endHour)*3600 + (59-endMin)*60 + (60-endSec);
            lastDaySec = 86400-lastDaySec;

            int totalSec = firstDaySec+lastDaySec+(dayEnd-1-dayStart)*86400;

            int finalDay = totalSec/86400;
            totalSec = totalSec-(finalDay*86400);
            int finalHour = totalSec/3600;
            totalSec = totalSec-(finalHour*3600);
            int finalMin = totalSec/60;
            int finalSec = totalSec-(finalMin*60);

            System.out.printf("%d dia(s)\n",finalDay);
            System.out.printf("%d hora(s)\n",finalHour);
            System.out.printf("%d minuto(s)\n",finalMin);
            System.out.printf("%d segundo(s)\n",finalSec);
        }



    }
}
