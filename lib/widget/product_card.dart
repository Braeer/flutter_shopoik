import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopoik/models/productModels.dart';
import 'package:flutter_shopoik/pages/productOne_page.dart';

class ProductCard extends StatelessWidget {
  final ProductModels product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ProductOnePage(productone: product);
          }));
        },
        child: Container(
          decoration: BoxDecoration(
            color: CupertinoColors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: CupertinoColors.systemGrey.withOpacity(0.2),
                blurRadius: 5.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                // Image.network(product.imageUrl, height: 100, width: 100),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(
                    product.imageUrl,
                    // height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  product.name,
                  style: CupertinoTheme.of(context)
                      .textTheme
                      .textStyle
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4.0),
                Text(
                  product.description,
                  style: CupertinoTheme.of(context)
                      .textTheme
                      .textStyle
                      .copyWith(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8.0),
                CupertinoButton(
                    child: Text('Подробнее'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ProductOnePage(
                          productone: product,
                        );
                      }));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
