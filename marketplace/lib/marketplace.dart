library marketplace;

export 'marketplace_location.dart';

class ProductModel {
  final int id;
  final String name;

  ProductModel(this.id, this.name);
}

final products = [
  ProductModel(1, 'Iphone'),
  ProductModel(2, 'Samsung'),
];
