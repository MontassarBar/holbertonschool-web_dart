List<double> convertToF(List<double> temperaturesInC) {
    List<double> cToF = temperaturesInC.map((tempC) => (tempC * 9/5 + 32)).toList();
    return (cToF.map((tempF) => double.parse(tempF.toStringAsFixed(2))).toList());
}