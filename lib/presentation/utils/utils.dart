extension ThousandSeparator on num {
  String separate() {
    int whole = truncate();
    int fraction = ((this - whole) * 1000).truncate();
    String result = '$whole';
    if (whole >= 1000) {
      final first = (whole / 1000).truncate();
      final second = whole.toString().substring(whole.length() - 3);
      result = '$first.$second';
    }
    return '$result,$fraction';
  }
}

extension NumberLength on num {
  int length() => truncate().toString().length;
}
