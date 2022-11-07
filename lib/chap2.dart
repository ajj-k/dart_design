class HitPoint {
  static const int _min = 0;
  static const int _max = 999;
  late final int value;

  HitPoint(final int value) {
    if (value < _min) throw StateError("$_min以上を指定してください");
    if (value > _max) throw StateError("$_max以上を指定してください");
    this.value = value;
  }

  HitPoint damage(final int damageAmount) {
    final int damaged = value - damageAmount;
    final int corrected = damaged < _min ? _min : damaged;
    return HitPoint(corrected);
  }

  HitPoint recover(final int recoveryAmount) {
    final int recovered = value + recoveryAmount;
    final int corrected = recovered > _max ? _max : recovered;
    return HitPoint(corrected);
  }
}