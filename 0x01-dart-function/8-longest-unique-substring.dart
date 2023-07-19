String longestUniqueSubstring(String str) {
    String s = '';
    String ss = '';
    for (var x = 0; x < str.length; x++){
      if (s.contains(str[x])){
        s = s.substring(s.indexOf(str[x]) + 1) + str[x];
      }
      else {
        s += str[x];
        if (s.length > ss.length) {
            ss = s;
        }
      }
    }
  return ss;
}