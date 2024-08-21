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
          title: const Text('Bottom Modal Sheet'),
          backgroundColor: Colors.lightGreen,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                showModalBottomSheet(
                  //backgroundColor: Colors.black, // we can set the bg color of the sheet
                  //barrierColor: Colors.lightGreen.shade900, // controls the color outside the sheet
                  isDismissible: true, // if set to false, the sheet won't dismiss if we click the outside space.
                    enableDrag: true, // if set to false, we can't drag down the sheet to dismiss it. But this won't work either when we use the single child scroll view widget!
                    isScrollControlled: false, // if set to true, it takes up the whole screen
                    context: context, builder: (context){
                  return SingleChildScrollView( scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 800,
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: Text('Behold! A Bottom Sheet!',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 17), ),
                              ),
                              const Divider(indent: 15, endIndent: 15,),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                child: Column(
                                  children: [
                                    Text('In Flutter, a bottom sheet is a sliding panel that appears from the bottom of the screen. There are two main types of bottom sheets: Modal Bottom Sheet: This type of bottom sheet prevents the user from interacting with the rest of the app until it is dismissed. You can create a modal bottom sheet using the showModalBottomSheet function.'),
                                    Text('In Flutter, a bottom sheet is a sliding panel that appears from the bottom of the screen. There are two main types of bottom sheets: Modal Bottom Sheet: This type of bottom sheet prevents the user from interacting with the rest of the app until it is dismissed. You can create a modal bottom sheet using the showModalBottomSheet function.'),
                                    Text('ℹ️ If we want a sheet like the Muslims Day app, that is actually a DraggableScrollable widget. Not a bottom modal sheet widget. So keep that in mind...')
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: ElevatedButton(
                                        onPressed: (){Navigator.pop(context);},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.lightGreen, foregroundColor: Colors.white
                                      ),
                                        child: const Text('Close')),
                                  ), )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                });
              }, child: Text('Show Bottom Sheet'), style: buttonStyle,)
            ],
          ),
        ));
  }
}

