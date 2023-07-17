void main(List<String> args) {
    var num = int.parse(args[0]);
    if (num < 0) {
        print('$num is negative');
    } else if (num > 0){
        print('$num is positive');
    } else {
        print('$num is zero');
    }
}