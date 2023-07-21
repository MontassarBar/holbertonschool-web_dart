class Password {
  String password = "";
  
  isValid() {
    int u = 0;
    int l = 0;
    for (var x = 0; x < password.length; x++){
      if (password[x].toUpperCase() == password[x]){
        u = 1;
      }
    }
    for (var x = 0; x < password.length; x++){
      if (password[x].toLowerCase() == password[x]){
        l = 1;
      }
    }
    if (password.length >= 8 && password.length <= 16 && u == 1 && l == 1) return true;
}
  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
