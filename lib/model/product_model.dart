class ProductModel {
  final String image, name, category;
  final double price, rate, distance;

  ProductModel({
    required this.image,
    required this.name,
    required this.category,
    required this.price,
    required this.rate,
    required this.distance,
  });
}

List<ProductModel> myProductModel = [
  ProductModel(
    image: 'assets/images/ramen/sapporo_miso_ramen.png',
    name: 'Sapporo Miso',
    category: 'Ramen',
    price: 3.9,
    rate: 5,
    distance: 150,
  ),
  ProductModel(
    image: 'assets/images/ramen/kurume_ramen.png',
    name: 'Kurume Ramen',
    category: 'Ramen',
    price: 4.3,
    rate: 4.9,
    distance: 600,
  ),
  ProductModel(
    image: 'assets/images/ramen/hakata_ramen.png',
    name: 'Hakata Ramen',
    category: 'Ramen',
    price: 3.9,
    rate: 4.8,
    distance: 400,
  ),
  ProductModel(
    image: 'assets/images/ramen/shrimp_fried_rice.png',
    name: 'Shrimp Fried Rice',
    category: 'Ramen',
    price: 4.9,
    rate: 4.5,
    distance: 800,
  ),
  ProductModel(
    image: 'assets/images/ramen/fullset_ramen.png',
    name: 'Fullset Ramen',
    category: 'Ramen',
    price: 5.9,
    rate: 4.7,
    distance: 400,
  ),
  ProductModel(
    image: 'assets/images/burger/grilled-beef-burger.png',
    name: 'Grilled beef burger',
    category: 'Burger',
    price: 33.5,
    rate: 5.0,
    distance: 150,
  ),
  ProductModel(
    image: 'assets/images/burger/fried-chicken-burger.png',
    name: 'Fried Chicken Burger',
    category: 'Burger',
    price: 23.0,
    rate: 4.7,
    distance: 150,
  ),
  ProductModel(
    image: 'assets/images/burger/cheese-burger.png',
    name: 'Cheese Burger',
    price: 40.5,
    distance: 100,
    rate: 4.5,
    category: "Burger",
  ),
  ProductModel(
    image: 'assets/images/burger/beef-burger.png',
    name: 'Beef-Burger',
    price: 18.5,
    distance: 200,
    rate: 5.0,
    category: "Burger",
  ),
  // for salad
  ProductModel(
    image: 'assets/images/veg-salad.png',
    name: 'Veg Salad',
    price: 7.0,
    distance: 300,
    rate: 5.0,
    category: "Salad",
  ),
  ProductModel(
    image: 'assets/images/mix-salad.png',
    name: 'Mix Salad',
    price: 10.0,
    distance: 350,
    rate: 4.8,
    category: "Salad",
  ),
  // for waffle
  ProductModel(
    image: 'assets/images/berry-bonanza-waffle.png',
    name: 'Berry Bonanza Waffle',
    price: 10.0,
    distance: 500,
    rate: 4.5,
    category: "Waffle",
  ),
];
