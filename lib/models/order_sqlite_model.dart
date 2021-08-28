import 'dart:convert';

class OrderSQLiteModel {
  final int id;
  final String uidshop;
  final String nameshop;
  final String nameproduct;
  final String price;
  final String amount;
  final String sum;
  OrderSQLiteModel({
    this.id,
    this.uidshop,
    this.nameshop,
    this.nameproduct,
    this.price,
    this.amount,
    this.sum,
  });
  

  OrderSQLiteModel copyWith({
    int id,
    String uidshop,
    String nameshop,
    String nameproduct,
    String price,
    String amount,
    String sum,
  }) {
    return OrderSQLiteModel(
      id: id ?? this.id,
      uidshop: uidshop ?? this.uidshop,
      nameshop: nameshop ?? this.nameshop,
      nameproduct: nameproduct ?? this.nameproduct,
      price: price ?? this.price,
      amount: amount ?? this.amount,
      sum: sum ?? this.sum,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'uidshop': uidshop,
      'nameshop': nameshop,
      'nameproduct': nameproduct,
      'price': price,
      'amount': amount,
      'sum': sum,
    };
  }

  factory OrderSQLiteModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return OrderSQLiteModel(
      id: map['id'],
      uidshop: map['uidshop'],
      nameshop: map['nameshop'],
      nameproduct: map['nameproduct'],
      price: map['price'],
      amount: map['amount'],
      sum: map['sum'],
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderSQLiteModel.fromJson(String source) => OrderSQLiteModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OrderSQLiteModel(id: $id, uidshop: $uidshop, nameshop: $nameshop, nameproduct: $nameproduct, price: $price, amount: $amount, sum: $sum)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is OrderSQLiteModel &&
      o.id == id &&
      o.uidshop == uidshop &&
      o.nameshop == nameshop &&
      o.nameproduct == nameproduct &&
      o.price == price &&
      o.amount == amount &&
      o.sum == sum;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      uidshop.hashCode ^
      nameshop.hashCode ^
      nameproduct.hashCode ^
      price.hashCode ^
      amount.hashCode ^
      sum.hashCode;
  }
}
