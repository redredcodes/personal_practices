import 'dart:convert';

import 'package:fiixplz/Screens/add_new_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../Widgets/product_item.dart';
import '../models/product.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> productList = [];

  bool _inProgress = false;

  // we want to call the getProductList() method the moment we open this page
  // which life cycle method is called at first?->initState
  // so let's do it...
  @override
  void initState() {
    getProductList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple[200],
        title: const Text(
          'Product List',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          // refresh button
          IconButton(
              onPressed: (){
                getProductList();
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: _inProgress ? const Center(
        child: CircularProgressIndicator(),
      ) :
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ProductItem(
                product: productList[index], onTapDelete: ()=> deleteItem(productList[index].id, context));
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 16,
              );
            },
            itemCount: productList.length),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddNewProductScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  // Calling the API-> bring the url at first to call the api
  Future<void> getProductList() async {
    _inProgress = true;
    setState(() {});
    Uri uri = Uri.parse('http://164.68.107.70:6060/api/v1/ReadProduct');
    Response response = await get(uri);
    print(response);
    print(response.statusCode);
    print(response.body);

    // the list we are receiving is encoded and it's in String format.
    // And it's sent like this, encoded. When we will be sending any data, it will be encoded also
    // so let's decode it at first! json decode
    if (response.statusCode == 200) {
      productList.clear();
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      for (var item in jsonResponse['data']) {
        Product product = Product(id: item['_id'],
          productName: item['ProductName'] ?? '',
          productCode: item['ProductCode'] ?? '',
          productImage: item['Img'] ?? '',
          unitPrice: item['UnitPrice'] ?? '',
          quantity: item['Qty'] ?? '',
          totalPrice: item['TotalPrice'] ?? '',
          createdAt: item['CreatedDate'] ?? '',);
        productList.add(product);
      }
    }
    _inProgress = false;
    setState(() {});
  }
  
  Future<void> deleteItem(String productId, context) async {
    Uri uri = Uri.parse('http://164.68.107.70:6060/api/v1/DeleteProduct/$productId');
    Response response = await get(uri);
    if (response.statusCode == 200) {
      getProductList();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Item Deleted')));
    }

  }
}


