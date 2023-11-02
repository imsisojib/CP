class StringAlgorithm{
  //better than the dart default one "".indexOf(pattern);
  int indexOf(String text, String pattern) {
    for (var i = 0; i <= text.length - pattern.length; i++) {
        if (text.substring(i, i + pattern.length) == pattern) {
          return i;
        }
      }

    return -1;
  }
}