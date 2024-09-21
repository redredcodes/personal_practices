import 'package:flutter/material.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  final TextEditingController _productNameTE = TextEditingController();
  final TextEditingController _unitPriceTE = TextEditingController();
  final TextEditingController _totalPriceTE = TextEditingController();
  final TextEditingController _productCodeTE = TextEditingController();
  final TextEditingController _productQuantityTE = TextEditingController();
  final TextEditingController _productImageTE = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Update Product', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _buildNewProductForm(),
      ),
    );
  }

  // the add new product form
  Widget _buildNewProductForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _productNameTE,
            decoration: InputDecoration(
              hintText: 'Enter Product Name',
              labelText: 'Product Name',
            ),
          ),
          TextFormField(
            controller: _unitPriceTE,
            decoration: InputDecoration(
              hintText: 'Unit Price',
              labelText: 'Unit Price',
            ),
          ),
          TextFormField(
            controller: _totalPriceTE,
            decoration: InputDecoration(
              hintText: 'Total Price',
              labelText: 'Total Price',
            ),
          ),
          TextFormField(
            controller: _productCodeTE,
            decoration: InputDecoration(
              hintText: 'Product Code',
              labelText: 'Product Code',
            ),
          ),
          TextFormField(
            controller: _productQuantityTE,
            decoration: InputDecoration(
              hintText: 'Product Quantity',
              labelText: 'Product Quantity',
            ),
          ),
          TextFormField(
            controller: _productImageTE,
            decoration: InputDecoration(
              hintText: 'Image',
              labelText: 'Product Image',
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: _onTapAddProductButton,
            child: Text('Update'),
            style: ElevatedButton.styleFrom(
                fixedSize: Size.fromWidth(double.maxFinite)),
          ),
        ],
      ),
    );
  }

  // add button function
  void _onTapAddProductButton() {}

  @override
  void dispose() {
    _productNameTE.dispose();
    _unitPriceTE.dispose();
    _totalPriceTE.dispose();
    _productCodeTE.dispose();
    _productQuantityTE.dispose();
    _productImageTE.dispose();
    super.dispose();
  }
}
