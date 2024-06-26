import '../app/data/models/category_model.dart';
import '../app/data/models/product_model.dart';
import 'constants.dart';

class DummyHelper {
  const DummyHelper._();

  static const _description = 'Ginger is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine.';

  static List<Map<String, String>> cards = [
    {'icon': Constants.lotus, 'title': '100%', 'subtitle': 'Organic'},
    {'icon': Constants.calendar, 'title': '1 Year', 'subtitle': 'Expiration'},
    {'icon': Constants.favourites, 'title': '4.8 (256)', 'subtitle': 'Reviews'},
    {'icon': Constants.matches, 'title': '80 kcal', 'subtitle': '100 Gram'},
  ];

  static List<CategoryModel> categories = [
    CategoryModel(id: 1, title: 'Seeds', image: Constants.apple),
    CategoryModel(id: 2, title: 'Fertilizers', image: Constants.broccoli),
    CategoryModel(id: 3, title: 'Tools', image: Constants.cheese),
    CategoryModel(id: 4, title: 'Pesticides', image: Constants.meat),
  ];

  static List<ProductModel> products = [
    ProductModel(
      id: 1,
      image: Constants.bellPepper,
      name: 'Amino Acid Powder',
      quantity: 0,
      price: 115,
      description: _description,
    ),
    ProductModel(
      id: 2,
      image: Constants.lambMeat,
      name: 'Beetroot',
      quantity: 0,
      price: 100,
      description: _description,
    ),
    ProductModel(
      id: 3,
      image: Constants.ginger,
      name: 'Nitrogen Powder',
      quantity: 0,
      price: 125,
      description: _description,
    ),
    ProductModel(
      id: 4,
      image: Constants.cabbage,
      name: 'Zinc Sulphate Powder',
      quantity: 0,
      price: 95,
      description: _description,
    ),
    ProductModel(
      id: 5,
      image: Constants.pumpkin,
      name: 'Agro Preservative',
      quantity: 0,
      price: 350,
      description: _description,
    ),
    ProductModel(
      id: 6,
      image: Constants.carrot,
      name: 'Multipowder Zinc',
      quantity: 0,
      price: 300,
      description: _description,
    ),
    ProductModel(
      id: 7,
      image: Constants.cauliflower,
      name: 'Barbituric Acid',
      quantity: 0,
      price: 310,
      description: _description,
    ),
  ];


  static List<ProductModel> products_fertilizer = [
    ProductModel(
      id: 1,
      image: Constants.bellPepper,
      name: 'Bell Pepper Red',
      quantity: 0,
      price: 5.99,
      description: _description,
    ),
    ProductModel(
      id: 2,
      image: Constants.lambMeat,
      name: 'Lamb Meat',
      quantity: 0,
      price: 44.99,
      description: _description,
    ),
    ProductModel(
    id: 3,
      image: Constants.ginger,
      name: 'Arabic Ginger',
      quantity: 0,
      price: 4.99,
      description: _description,
    ),
    ProductModel(
    id: 4,
      image: Constants.cabbage,
      name: 'Fresh Lettuce',
      quantity: 0,
      price: 3.99,
      description: _description,
    ),
  ];

}