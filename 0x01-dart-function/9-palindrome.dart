bool isPalindrome(String s) {
  if (s.length <= 3) return false;
  if (s == s.split('').reversed.join()) return true;
   return false;
}