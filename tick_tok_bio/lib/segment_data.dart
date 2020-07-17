class SegmentData {
  Map<String, int> ticks;

  SegmentData() {
    ticks = new Map<String, int>();
  }

  void addTickData({
    String type,
    int n,
    Map<String, int> map,
  }) {
    if (map != null) {
      ticks.addAll(map);
    } else {
      ticks[type] = n;
    }
  }

  String toString() {
    String ret = '';
    ticks.forEach((key, value) {
      ret += '"$key": $value,';
    });
    return ret;
  }
}
