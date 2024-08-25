import 'package:flutter/material.dart';

main() {
  runApp(TextFieldApp());
}

class TextFieldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _passTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text(
          'Text Field App',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.blue[400],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              enabled: true,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                hintText: 'Search the bug out!',
                hintStyle: const TextStyle(color: Colors.black12),
                icon: Icon(Icons.add),
                prefixIcon: Icon(Icons.search),
                suffixIcon: TextButton(onPressed: (){}, child: Text('Search', style: TextStyle(color: Colors.blue),)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    // BorderSide.none leaves totally no borders
                    color: Colors.blue.shade200, width: 2
                  ), // BorderSide.none leaves totally no borders
                ),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        BorderSide(color: Colors.blue.shade200, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                    BorderSide(color: Colors.blue, width: 2)
                )
              ),
            ),
            SizedBox(height: 16,),
            TextField(
              maxLength: 200,
              maxLines: 5,
              enabled: true,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                  labelText: 'Description',
                  alignLabelWithHint: true,
                  labelStyle: TextStyle(color: Colors.blue),
                  // label: Text('Description', style: TextStyle(color: Colors.blue)), // this property here lacks some abilities...
                  hintText: 'Describe the Planet you are from',
                  hintStyle: const TextStyle(color: Colors.black12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      // BorderSide.none leaves totally no borders
                        color: Colors.blue.shade200, width: 2
                    ), // BorderSide.none leaves totally no borders
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                      BorderSide(color: Colors.blue.shade200, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                      BorderSide(color: Colors.blue, width: 2)
                  )
              ),
            ),
            SizedBox(height: 16,),
            TextField(
              controller: _passTextEditingController,
              obscureText: true,
              enabled: true,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                  label: Text('Password', style: TextStyle(color: Colors.blue),),
                  hintText: 'Not gonna steal your pass, I promise',
                  hintStyle: const TextStyle(color: Colors.black12),
                  prefixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      // BorderSide.none leaves totally no borders
                        color: Colors.blue.shade200, width: 2
                    ), // BorderSide.none leaves totally no borders
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                      BorderSide(color: Colors.blue.shade200, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                      BorderSide(color: Colors.blue, width: 2)
                  )
              ),
            ),
            TextButton(onPressed: (){
              _passTextEditingController.clear();
            }, child: Text('Clear Password', style: TextStyle(color: Colors.blue),))
          ],
        ),
      ),
    );
  }
}

