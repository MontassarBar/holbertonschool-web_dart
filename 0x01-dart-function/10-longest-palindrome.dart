String longestPalindrome(String s){
    int leftIndex = 0;
    int rightIndex = 0;
    for (int i = 0; i < s.length - 1; i++) {
        int left = i;
        int right = i + 1;
        while (left >= 0 && right < s.length && s[left] == s[right]) {
            if (right - left > rightIndex - leftIndex) {
                rightIndex = right;
                leftIndex = left;
            }
            right++;
            left--;
        }
        left = i;
        right = i + 2;
        while (left >= 0 && right < s.length && s[left] == s[right]) {
            if (right - left > rightIndex - leftIndex) {
                rightIndex = right;
                leftIndex = left;
            }
            right++;
            left--;
        }
    }
    if (s.substring(leftIndex, rightIndex + 1).length > 1) return s.substring(leftIndex, rightIndex + 1);
    return 'none';
}