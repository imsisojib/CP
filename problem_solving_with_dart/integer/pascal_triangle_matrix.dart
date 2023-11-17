void main(List<String> args) {
  //generate(1);
  print(getRow(3));
}

List<List<int>> generate(int numRows) {

  List<List<int>> matrix = [];
  for(int row = 0; row<numRows ; row++){
    //storing all row data, afer getting all row data then insert the list
    List<int> rowData = [];
    for(int column = 0; column<=row ; column++){
      if(column==0 || column==row){
        rowData.insert(column, 1);
      }else{
        rowData.insert(column, matrix[row-1][column-1] + matrix[row-1][column]);
      }
    }
    matrix.insert(row, rowData);
  }

  return matrix;    
}

List<int> getRow(int rowIndex) {
  //first generate the matrix then return row for index
  return generate(rowIndex)[rowIndex-1];
}