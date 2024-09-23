import 'dart:ui';

import 'package:fiixplz/Screens/update_product_screen.dart';
import 'package:fiixplz/models/product.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key, required this.product, required this.onTapDelete,
  });

  final Product product;
  final VoidCallback onTapDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.white.withOpacity(0.3),
        )
      ),
      child: Stack(
        children: [
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.white.withOpacity(0.2),
              ),
            ),
          ),
          ListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          tileColor: Colors.transparent,
          title: Text(product.productName),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Prdouct Code: ${product.productCode}'),
              Text('Price: \$${product.unitPrice}'),
              Text('Prdouct Quantity: ${product.quantity}'),
              Text('Total Price: \$${product.totalPrice}'),

              const Divider(),

              // Buttons- Edit, Delete
              ButtonBar(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UpdateProductScreen(product: product,)));
                    },
                    child: const Text(
                      'Edit',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  TextButton(
                    onPressed: onTapDelete,
                    child: Text(
                      'Delete',
                      style: TextStyle(color: Colors.redAccent[700]),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),]
      ),
    );
  }
}


