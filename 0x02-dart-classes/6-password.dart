class Password {
  String _password = "";
   Password({required String password}): _password = password;
  
  String get password {
    return _password;
  }
  
  set password(String pass) {
    _password = pass;
  }
  isValid() {
    int u = 0;
    int l = 0;
    for (var x = 0; x < _password.length; x++){
      if (_password[x].toUpperCase() == _password[x]){
        u = 1;
      }
      if (_password[x].toLowerCase() == _password[x]){
        l = 1;
      }
    }
    if (_password.length >= 8 && _password.length <= 16 && u == 1 && l == 1 && _password.contains(RegExp(r'[0-9]'))) return true;
    return false;
}
  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}