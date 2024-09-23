import 'package:flutter/cupertino.dart';
import 'package:flutter_shopoik/models/productModels.dart';
import 'package:flutter_shopoik/widget/product_card.dart';

// Пример списка продуктов
List<ProductModels> products2 = [
  ProductModels(
    name: 'Яблоко',
    description: 'Свежее и вкусное',
    // imageUrl:
    //     'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Red_Apple.jpg/1200px-Red_Apple.jpg',
    imageUrl: 'assets/images/apple.jpg',
  ),
  ProductModels(
    name: 'Банан',
    description: 'Полезный и питательный',
    imageUrl: 'assets/images/banana.jpg',
  ),
  ProductModels(
    name: 'Апельсин',
    description: 'Сочный и сладкий',
    imageUrl: 'assets/images/orange.jpg',
  ),
  ProductModels(
    name: 'Черешня',
    description: 'Сладкий и полезный',
    imageUrl: 'assets/images/cherry.jpg',
  ),
  ProductModels(
    name: 'Груша',
    description: 'Сладкая и вкусная',
    imageUrl: 'assets/images/cherry.jpg',
  ),
  ProductModels(
    name: 'Киви',
    description: 'Вкусный и полезный',
    imageUrl: 'assets/images/cherry.jpg',
  ),

  ProductModels(
    name: 'Мандарин',
    description: 'Сочный и сладкий',
    imageUrl: 'assets/images/cherry.jpg',
  ),

  ProductModels(
    name: 'Персик',
    description: 'Сладкий и вкусный',
    imageUrl: 'assets/images/cherry.jpg',
  ),

  ProductModels(
    name: 'Слива',
    description: 'Вкусная и полезная',
    imageUrl: 'assets/images/cherry.jpg',
  ),

  ProductModels(
    name: 'Черешня',
    description: 'Сладкая и вкусная',
    imageUrl: 'assets/images/cherry.jpg',
  ),
  // Добавьте больше продуктов при необходимости
];

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.62),
          itemCount: products2.length,
          itemBuilder: (context, index) {
            return ProductCard(
              product: ProductModels(
                  name: products2[index].name,
                  description: products2[index].description,
                  imageUrl: products2[index].imageUrl),
            );
          },
        ),
      ),
    );
  }
}
