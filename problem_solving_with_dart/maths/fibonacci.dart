void main(List<String> args) {
  print(fibonacciValueForNthPosition(10));
}

int fibonacciValueForNthPosition(int n) {
      int a = 1, b = 1;
    while (n-->0)
        a = (b += a) - a;
    return a;
}

//LeetCode: 70
//Problem of a fibonacci series
int climbStairs(int n) {
  if(n==1) return 1;
  if(n==2) return 2;
  List<int> fibonacciList = List.generate(n, (index) => 0);
  fibonacciList[0] = 1;
  fibonacciList[1] = 2;
  for(int i=2; i<n; i++){
    fibonacciList[i] = fibonacciList[i-2]+fibonacciList[i-1];
  }
  return fibonacciList.last;
}