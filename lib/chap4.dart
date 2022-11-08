import 'dart:math' as math;

// AttackPowerクラス
class AttackPower {
  static final int min = 0;
  late final int value;

  AttackPower(final int value) {
    if (value < min) throw StateError("不正な値の入力です");
    this.value = value;
  }

  AttackPower reinForce(final AttackPower increment) {
    return AttackPower(value + increment.value);
  }

  AttackPower disable() {
    return AttackPower(min);
  }
}

// Weaponクラス
class Weapon {
  late final AttackPower attackPower;

  Weapon({required this.attackPower});

  Weapon reinForce(final AttackPower increment) {
    final AttackPower reinForced = attackPower.reinForce(increment);
    return Weapon(attackPower: reinForced);
  }
}

// HitPointクラス
class HitPoint {
  static final int _min = 0;
  late int amount;

  HitPoint(final int amount){
    if (amount < _min) throw StateError("不正な入力です");
    this.amount = amount;
  }

  void damage(final int damageAmount) {
    final int nextAmount = amount - damageAmount;
    amount = math.max(_min, nextAmount);
  }

  bool isZero() {
    return amount == _min;
  }
}

// Memberクラス
class Member {
  late final HitPoint hitPoint;
  late final States states;

  void damage(final int damageAmount) {
    hitPoint.damage(damageAmount);
    // if (hitPoint.isZero()) states.add()
  }
}

// Statesクラス（ダミー）
class States {

}

class StateType {
  // static
}

