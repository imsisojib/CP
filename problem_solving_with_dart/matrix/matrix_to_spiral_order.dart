
main(){
  //print(spiralOrder([[1,2],[3,4]]));
  print(largestLocal([[9,9,8,1],[5,6,2,6],[8,2,6,4],[6,2,2,2]]));
}


List<int> spiralOrder(List<List<int>> matrix) {
    if(matrix.isEmpty) return [];
    List<int> res = matrix.first;
    matrix.removeAt(0);
    res.addAll(spiralOrder(matrix)); 
    return res;
}

    int findMax(List<List<int>> grid, int x, int y) {
        int maxElement = 0;
        for (int i = x; i < x + 3; i++) {
            for (int j = y; j < y + 3; j++) {
              print("finding Max: maxElement=$maxElement, current=${grid[i][j]}");
                if((grid[i][j]) > maxElement){
                  maxElement = grid[i][j];
                }
            }
        }
        
        return maxElement;
    }
    
    List<List<int>>largestLocal(List<List<int>> grid) {
        int N = grid.length;
        List<List<int>> maxLocal = List.generate(N-2, (_) => List.generate(N-2, (_) => 0));

        for (int i = 0; i < N - 2; i++) {
            for (int j = 0; j < N - 2; j++) {
                print("called findMax: $i, $j");
                int max = findMax(grid, i, j);
                print("found max: $max, position: [$i,$j]");
                maxLocal[i][j] = findMax(grid, i, j);
                print(maxLocal);
            }
        }
        return maxLocal;
    }