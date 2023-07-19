String longestUniqueSubstring(String str) {
    Set<String> l = {};
    for (var x = 0; x < str.length; x++){
      while (l.contains(str[x])){
        l.remove(l.first);
      }
      l.add(str[x]);
    }
  return l.join();
}