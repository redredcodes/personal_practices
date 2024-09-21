import 'package:fiixplz/Screens/update_product_screen.dart';
import 'package:fiixplz/models/product.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key, required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      tileColor: Colors.purple[100],
      title: Text(product.productName),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Prdouct Code: ${product.productCode}'),
          Text('Price: \$${product.unitPrice}'),
          Text('Prdouct Quantity: ${product.quantity}'),
          Text('Total Price: \$${product.totalPrice}'),
          const Divider(),
          ButtonBar(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UpdateProductScreen()));
                },
                child: Text(
                  'Edit',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Delete',
                  style: TextStyle(color: Colors.redAccent[700]),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
