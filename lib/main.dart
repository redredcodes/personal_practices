import 'package:flutter/material.dart';

main() {
  runApp(const TextFieldApp());
}

class TextFieldApp extends StatelessWidget {
  const TextFieldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue[200],
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData( // when we navigate to a different page, a back button is automatically created.
            // how do i change the color of that button? Using this over here...
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(
            color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          )
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            foregroundColor: Colors.white,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          alignLabelWithHint: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                // BorderSide.none leaves totally no borders
                  color: Colors.white, width: 2
              ), // BorderSide.none leaves totally no borders
            ),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                BorderSide(color: Colors.blue.shade200, width: 2)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                const BorderSide(color: Colors.blue, width: 2)
            ),
          labelStyle: TextStyle(color: Colors.blue),
          // label: Text('Description', style: TextStyle(color: Colors.blue)), // this property here lacks some abilities...
          hintStyle: const TextStyle(color: Colors.black12),
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.blue[1000],
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData( // when we navigate to a different page, a back button is automatically created.
            // how do i change the color of that button? Using this over here...
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            )
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            foregroundColor: Colors.white,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          alignLabelWithHint: true,
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
              const BorderSide(color: Colors.blue, width: 2)
          ),
          labelStyle: TextStyle(color: Colors.blue),
          // label: Text('Description', style: TextStyle(color: Colors.blue)), // this property here lacks some abilities...
          hintStyle: const TextStyle(color: Colors.black12),
        ),
      ),
      themeMode: ThemeMode.light,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final TextEditingController _passTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Text Field App',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                enabled: true,
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  hintText: 'Search the bug out!',
                  hintStyle: const TextStyle(color: Colors.black12),
                  icon: const Icon(Icons.add),
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: TextButton(
                      onPressed: (){}, child: const Text('Search', style: TextStyle(color: Colors.blue),
                   ),
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              const TextField(
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
                    hintStyle: TextStyle(color: Colors.black12),
                ),
              ),
              const SizedBox(height: 16,),
              TextField(
                controller: _passTextEditingController,
                obscureText: true,
                enabled: true,
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                    label: const Text('Password', style: TextStyle(color: Colors.blue),),
                    hintText: 'Not gonna steal your pass, I promise',
                    hintStyle: const TextStyle(color: Colors.black12),
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffix: IconButton(onPressed: (){
                      _passTextEditingController.clear();
                    }, icon: const Icon(Icons.cancel, color: Colors.blue,)),
                ),
              ),
              TextButton(onPressed: (){
                _passTextEditingController.clear();
              }, child: const Text('Clear Password', style: TextStyle(color: Colors.blue),)),
              const SizedBox(height: 20,),
              ElevatedButton.icon(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Settings()));
                }, label: const Text('Settings'), icon: const Icon(Icons.settings),
              ),
              const TextField(
                decoration: InputDecoration(
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
    );
  }
}

