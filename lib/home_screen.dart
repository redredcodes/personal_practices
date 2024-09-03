import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _numOneTE = TextEditingController();
  final TextEditingController _numTwoTE = TextEditingController();
  double _result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        title: const Text('The Dumb Calculator', style: TextStyle(fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40,),
              TextField(
                keyboardType: TextInputType.number,
                controller: _numOneTE,
                decoration: const InputDecoration(
                    hintText: 'First Number', labelText: 'First Number'),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: _numTwoTE,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    hintText: 'Second Number', labelText: 'Second Number'),
              ),
              const SizedBox(
                height: 35,
              ),

              // Calculator Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // plus button
                  ElevatedButton(
                    onPressed: () {
                      _add();
                    },
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                            color: Colors.black,
                            width: 1
                        ),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: Colors.lightGreenAccent,
                        foregroundColor: Colors.black),
                    child: const Icon(Icons.add),
                  ),

                  // minus button
                  ElevatedButton(
                    onPressed: () {
                      _minus();
                    },
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Colors.black,
                            width: 1
                        ),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: Colors.lightGreenAccent,
                        foregroundColor: Colors.black),
                    child: const Icon(Icons.remove),
                  ),

                  // multiply button
                  ElevatedButton(
                    onPressed: () {
                      _multiply();
                    },
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Colors.black,
                            width: 1
                        ),
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(10),
                        backgroundColor: Colors.lightGreenAccent,
                        foregroundColor: Colors.black),
                    child: const Icon(Icons.clear),
                  ),

                  // divide button
                  ElevatedButton(
                      onPressed: () {
                        _divide();
                      },
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                              color: Colors.black,
                              width: 1
                          ),
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(12),
                          backgroundColor: Colors.lightGreenAccent,
                          foregroundColor: Colors.black),
                      child: const Text(
                        '/',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                  const SizedBox(
                    height: 26,
                  ),
                ],
              ),

              const SizedBox(
                height: 15,
              ),

              // result...
              Column(
                children: [
                  Container( width: 200, height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(

                      ),
                      color: Colors.lightGreenAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        // 'Result: $_result ',
                        // if we divide for example, 60.3/3 it shows a terrifying big number and we don't want it
                        // so we only want to show 2 fractional numbers. So that's what's done below using .toStringAsFixed(value)
                        'Result: ${_result.toStringAsFixed(2)}',
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),

                  // clear button
                  SizedBox( width: 100,
                    child: OutlinedButton(
                      onPressed: (){
                        setState(() {
                          _result = 0;
                        });
                      },
                      style: OutlinedButton.styleFrom( side: const BorderSide(
                        color: Colors.black,
                        width: 1
                      ),
                        backgroundColor: Colors.lightGreenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                      ),
                      child: const Text('Clear', style: TextStyle(color: Colors.black),),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // the add button function
  void _add(){
    // double firstNum = double.parse(_numOneTE.text);
    // double secondNum = double.parse(_numTwoTE.text);
    // so the problem with only pursing the string input into double is that,
    // you can type random invalid stuffs and the function doesn't work than. But we want to return 0 in that case...
    // so we are gonna tryParse it, and if we can't (??) then we will return a 0
    double firstNum = double.tryParse(_numOneTE.text) ?? 0;
    double secondNum = double.tryParse(_numTwoTE.text) ?? 0;
    _result = firstNum + secondNum;
    setState(() {

    });
  }
  // subtract button function
  void _minus(){
    double firstNum = double.tryParse(_numOneTE.text) ?? 0;
    double secondNum = double.tryParse(_numTwoTE.text) ?? 0;
    _result = firstNum - secondNum;
    setState(() {

    });
  }
  // multiply button function
  void _multiply(){
    double firstNum = double.tryParse(_numOneTE.text) ?? 0;
    double secondNum = double.tryParse(_numTwoTE.text) ?? 0;
    _result = firstNum * secondNum;
    setState(() {

    });
  }
  // divide button function
  void _divide(){
    double firstNum = double.tryParse(_numOneTE.text) ?? 0;
    double secondNum = double.tryParse(_numTwoTE.text) ?? 0;
    _result = firstNum / secondNum;
    setState(() {

    });
  }



}

