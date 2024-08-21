import 'package:flutter/material.dart';

main(){
  runApp(GreetingApp());
}

class GreetingApp extends StatelessWidget {
  const GreetingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  snackBar(msg, context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle= ElevatedButton.styleFrom(
      padding: EdgeInsets.all(10),
      backgroundColor: Colors.lightGreen,
      foregroundColor: Colors.white,
    );
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.white,
          title: const Text('Navigation'),
          backgroundColor: Colors.lightGreen,
          foregroundColor: Colors.white,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Page1()));
                },
                child: Text('Go to Page 1'),
                style: buttonStyle,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Page2()));
              },
              child: Text('Go to Page 2'),
              style: buttonStyle,
            ),
          ],
        ));
  }
}

class Page1 extends StatelessWidget{
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Page2()));
        }, child: Text('Page 2')),
      ),
    );
  }
}

class Page2 extends StatelessWidget{
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page 2'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton.icon(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeActivity()));
              }, label: Text('Home'),
              icon: const Icon(Icons.home_rounded),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                foregroundColor: Colors.white,
              ),),
            ),
            ElevatedButton.icon(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Page1()));
            }, label: const Text('Page 1'),
              icon: const Icon(Icons.open_in_new),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                foregroundColor: Colors.white,
              ),),

          ],
        ),
    );
  }
}

// note done ✅




