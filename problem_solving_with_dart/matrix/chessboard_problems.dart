void main(List<String> args) {
    print(numRookCaptures([[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".","R",".",".",".","p"],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."]]));
}

//https://leetcode.com/problems/available-captures-for-rook/description/
//need to find available captures for a Rook
int numRookCaptures(List<List<String>> board) {
  int availableCaptures = 0;

  for(int row = 0; row<8; row++){
    for(int column = 0; column<8; column++){
      if(board[row][column]=='R'){
        //rook found, check captures and return result

        //current row search
        //----searching current row index to left
        for(int i=column-1; i>=0; i--){
          if(board[row][i]=='p'){
            //found first pawn, increase capture and break the loop
            availableCaptures++;
            break;
          }else if(board[row][i]=='B'){
            //found bishop, so unable to capture the rest lefts
            break;
          }
        }
        //----searching current row index to right
        for(int i=column+1; i<8; i++){
          if(board[row][i]=='p'){
            //found first pawn, increase capture and break the loop
            availableCaptures++;
            break;
          }else if(board[row][i]=='B'){
            //found bishop, so unable to capture the rest lefts
            break;
          }
        }

        //current column search
        //----search current column to top
        for(int i=row-1; i>=0; i--){
          if(board[i][column]=='p'){
            //found first pawn, increase capture and break the loop
            availableCaptures++;
            break;
          }else if(board[i][column]=='B'){
            //found bishop, so unable to capture the rest lefts
            break;
          }
        }
        //----search current column to bottom
        for(int i=row+1; i<8; i++){
          if(board[i][column]=='p'){
            //found first pawn, increase capture and break the loop
            availableCaptures++;
            break;
          }else if(board[i][column]=='B'){
            //found bishop, so unable to capture the rest lefts
            break;
          }
        }

        return availableCaptures;
      }
    }
  }

  return availableCaptures;
    
}