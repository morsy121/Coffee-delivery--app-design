class CoffeePopular {
  String image;
  String rate;
  String typeofCoffee;
  String price;
  String? coffeepalce;
  String? delivery;

  CoffeePopular({
    required this.image,
    required this.rate,
    required this.typeofCoffee,
    required this.price,
    this.coffeepalce,
    this.delivery,
  });
}

class NearstCoffee {
  String image;
  String rate;
  String typeofCoffee;
  String? price;
  String? coffeepalce;
  String? delivery;

  NearstCoffee({
    required this.image,
    required this.rate,
    required this.typeofCoffee,
    this.price,
    this.coffeepalce,
    this.delivery,
  });
}

class LabelAndFunction {
  String label;
  Function function;
  LabelAndFunction({required this.label, required this.function});
}
