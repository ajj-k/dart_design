// ダミークラス
class Currency {}

class Money {
  late final int amount;
  late final Currency currency;

  Money(int amount, Currency? currency) {
    if (amount < 0) throw StateError("金額が0以上ではありません");
    if (currency == null) throw StateError("通貨を指定してください");

    this.amount = amount;
    this.currency = currency!;
  }

  Money add(final Money other) {
    final int added = amount + other.amount;
    return Money(added, currency);
  }

}