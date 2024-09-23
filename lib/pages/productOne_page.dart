import 'package:flutter/cupertino.dart';
import 'package:flutter_shopoik/models/productModels.dart';

class ProductOnePage extends StatelessWidget {
  final ProductModels productone;

  ProductOnePage({Key? key, required this.productone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          color: CupertinoColors.white,
          child: Center(
              child: Column(
            children: [
              Image.asset(productone.imageUrl),
              const SizedBox(height: 16.0),
              Text(productone.name,
                  style: CupertinoTheme.of(context)
                      .textTheme
                      .textStyle
                      .copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 16.0),
              Text(productone.description)
            ],
          )),
        ),
      ),
    );
  }
}
