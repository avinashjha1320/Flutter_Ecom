import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String category;
  final String name;
  final String description;
  final String imageUrl;
  final double price;

  Product({
    @required this.id,
    @required this.name,
    @required this.category,
    @required this.description,
    @required this.imageUrl,
    @required this.price,
  });
}

class Products with ChangeNotifier{
  List<Product> _items=[
    Product(
      id:'1',
      name: 'Name',
      imageUrl: 'https://cdn.vox-cdn.com/thumbor/5Vn4o-4_AA-7i95-ZNeHR9bn1sI=/0x0:2040x1360/1400x933/filters:focal(857x517:1183x843):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/67108186/elon_musk_tesla_3036.0.jpg',
      price: 5,
      category: 'Business',
      description: 'This is the description'
    ),
    Product(
      id:'2',
      name: 'Name2',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/e/ed/Elon_Musk_Royal_Society.jpg',
      price: 7,
      category: 'Business',
      description: 'This is the description'
    ),
  ];

  List<Product>get items{
    return [..._items];
  }

  Product findById(String id){
    return _items.firstWhere((pdt) => pdt.id==id);
  }
}