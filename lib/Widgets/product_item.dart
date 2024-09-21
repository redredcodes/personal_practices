
import 'package:fiixplz/Screens/update_product_screen.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
      ),
      tileColor: Colors.purple[100],
      title: Text('Product Name'),
      subtitle: Column( crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Prdouct Code: CODE'),
          Text('Price: \$120'),
          Text('Prdouct Quantity: 2'),
          Text('Total Price: \$240'),
          const Divider(),
          ButtonBar(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateProductScreen()));
                },
                label: Text('Edit'),
                icon: Icon(Icons.edit),
              ),
              TextButton.icon(
                onPressed: () {},
                label: Text(
                  'Delete',
                  style: TextStyle(color: Colors.red),
                ),
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}