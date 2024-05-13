void main() {
  print(numSpecial([[0,0],[0,0],[1,0]]));
}

//brute force
// int numSpecial(List<List<int>> mat) {
//     int count = 0;
   
//     int column = mat.length;
//     int row = mat[0].length;

//     for(int i=0; i<column; i++){
//       for(int j=0; j<row; j++){
//         if(mat[i][j]==1) {
//           print("looking for position: [$i][$j]");
//           count += isSpecialPosition(j,i,row, column,mat);
//         }
//       }
//     }

//     return count;
// }

// int isSpecialPosition(int row, int column, int lengthOfRow, int lengthOfColumn, List<List<int>> mat){
//   print("current row: $row, current column: $column, total row: $lengthOfRow, total column: $lengthOfColumn");
//   int rowAndColumnSum = 0;
//   for(int i=0; i<lengthOfRow; i++){
//     rowAndColumnSum += mat[column][i];
//     print("row: [$column][$i]=${mat[column][i]}}");
//   }
//   for(int i=0; i<lengthOfColumn; i++){
//     rowAndColumnSum += mat[i][row];
//     print("column: [$i][$row]=${mat[i][row]}");
//   }
//   return rowAndColumnSum==2?1:0;
// }


//approach-Pre-Compute
int numSpecial(List<List<int>> mat) {
    int count = 0;
   
    int m = mat.length; //column no
    int n = mat[0].length;  //row no

    List<int> rowSum = List.filled(m, 0);
    List<int> colSum = List.filled(n, 0);

    for(int column=0; column<m; column++){
      for(int row=0; row<n; row++){
        // if(mat[i][j]==1) {
        //   print("looking for position: [$i][$j]");
        //   count += isSpecialPosition(j,i,row, column,mat);
        // }
        rowSum[column] += mat[column][row];
        colSum[row] += mat[column][row];
      }
    }

    for(int column=0; column<m; column++){
      for(int row=0; row<n; row++){
        if(mat[column][row]==1 && colSum[row]==1 && rowSum[column]==1) {
          count++;
        }
      }
    }

    return count;
}