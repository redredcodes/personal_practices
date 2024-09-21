import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController _productNameTE = TextEditingController();
  final TextEditingController _unitPriceTE = TextEditingController();
  final TextEditingController _totalPriceTE = TextEditingController();
  final TextEditingController _productCodeTE = TextEditingController();
  final TextEditingController _productQuantityTE = TextEditingController();
  final TextEditingController _productImageTE = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _inProgress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: const Text('Add New Product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _buildNewProductForm(),
        ),
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
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a valid value';
              }
              return null;
            },
            controller: _productNameTE,
            decoration: const InputDecoration(
              hintText: 'Enter Product Name',
              labelText: 'Product Name',
            ),
          ),
          TextFormField(
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a valid value';
              }
              return null;
            },
            controller: _unitPriceTE,
            decoration: const InputDecoration(
              hintText: 'Unit Price',
              labelText: 'Unit Price',
            ),
          ),
          TextFormField(
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a valid value';
              }
              return null;
            },
            controller: _totalPriceTE,
            decoration: const InputDecoration(
              hintText: 'Total Price',
              labelText: 'Total Price',
            ),
          ),
          TextFormField(
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a valid value';
              }
              return null;
            },
            controller: _productCodeTE,
            decoration: const InputDecoration(
              hintText: 'Product Code',
              labelText: 'Product Code',
            ),
          ),
          TextFormField(
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a valid value';
              }
              return null;
            },
            controller: _productQuantityTE,
            decoration: const InputDecoration(
              hintText: 'Product Quantity',
              labelText: 'Product Quantity',
            ),
          ),
          TextFormField(
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Enter a valid value';
              }
              return null;
            },
            controller: _productImageTE,
            decoration: const InputDecoration(
              hintText: 'Image',
              labelText: 'Product Image',
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          _inProgress ? const Center(
            child: CircularProgressIndicator(),
          ) : ElevatedButton(
            onPressed: _onTapAddProductButton,
            style: ElevatedButton.styleFrom(
                fixedSize: const Size.fromWidth(double.maxFinite)),
            child: const Text('Add Product'),
          ),
        ],
      ),
    );
  }

  // add button function
  void _onTapAddProductButton() {
    if (_formKey.currentState!.validate()) {
      addNewProduct();
    }
  }

  // API work
  Future<void> addNewProduct() async {
    _inProgress = true;
    setState(() {});
    Uri uri = Uri.parse('http://164.68.107.70:6060/api/v1/CreateProduct');
    Map<String, dynamic> requestBody = {
      "Img": _productImageTE.text,
      "ProductCode": _productCodeTE.text,
      "ProductName": _productNameTE.text,
      "Qty": _productQuantityTE.text,
      "TotalPrice": _totalPriceTE.text,
      "UnitPrice": _unitPriceTE.text,
    };
    Response response = await post(uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(requestBody));
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      _clearTextFields();
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('New Product Added')));
    }
    _inProgress = false;
    setState(() {});
  }

  void _clearTextFields() {
    _productNameTE.clear();
    _unitPriceTE.clear();
    _totalPriceTE.clear();
    _productCodeTE.clear();
    _productQuantityTE.clear();
    _productImageTE.clear();
  }

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
