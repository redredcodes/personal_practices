import 'package:flutter/material.dart';

main() {
  runApp( AthariFeed());
}

class AthariFeed extends StatelessWidget {
   AthariFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.indigo),
        darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
        color: Colors.black87,
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
   HomeActivity({super.key});

  final myFavSheikhsList= [
    {'img':'https://islamicaudios.net/wp-content/uploads/2022/11/Shaykh-Abu-Zaid-Zameer-Pune-IslamicLecturersNet-Latest-Audio-Video-Bayan-1.jpg', 'title':'Abu Zaid Zameer'},
    {'img':'https://i.ytimg.com/vi/x3HRysNcsgE/maxresdefault.jpg', 'title':'Sheikh Abu Bakar Zakara'},
    {'img':'https://th.bing.com/th/id/OIP.KTL_oO_rTyetiNIr4fhwwwHaEK?rs=1&pid=ImgDetMain', 'title':'Sheikh Motiur Rahman Madani'},
    {'img':'https://i.ytimg.com/vi/8mG45C2zckI/maxresdefault.jpg', 'title':'Sheikh Abdur Razzaq al Badr'},
    {'img':'https://i.ytimg.com/vi/wJTQ-S-8pW0/maxresdefault.jpg', 'title':'sheikh saleh al-fawzan'},
    // {'img':'', 'title':''},
    // {'img':'', 'title':''},
    // {'img':'', 'title':''},
  ];

  // List<String> friendList= ['Bokor', 'Ali', 'Jihad', 'Jawad', 'Mahabub'];
  snackBar(message, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

// CustomAlertDialog(context){
//     return showDialog(context: context, builder: (BuildContext context){
//       return Expanded(child: AlertDialog(
//         title: Text('Red Alert!'),
//         content: Text('Do yo want a cake?'),
//         actions: [
//           TextButton(onPressed: (){
//             snackBar('Order Placed on your dream!', context);
//             Navigator.of(context).pop();
//             }, child: Text('Yes')),
//           TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('No, I got Diabetes')),
//
//         ],
//       ));
//     });
// }

  //
  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 50),
      backgroundColor: Colors.lightGreen,
      foregroundColor: Colors.white,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text('Athari Feed'),
        toolbarHeight: 60,
        // usually 60 is the default value
        toolbarOpacity: 1,
        // only values between 0 & 1
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                snackBar('Search for Lectures and Books', context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                snackBar('Settings', context);
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                snackBar('Account', context);
              },
              icon: Icon(Icons.account_circle))
        ],
      ),
      // the commented section below is what I was putting effort into...

      // module-8, class 2
      //   body: ListView.builder(
      //       itemCount: friendList.length,
      //       itemBuilder: (context, index){
      //             return Text(friendList[index]);
      // }),
      // body: SingleChildScrollView(
      //   //scrollDirection: Axis.horizontal,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       // Column(),
      //       SingleChildScrollView(
      //         scrollDirection: Axis.horizontal,
      //         child: Row(
      //           children: [
      //             Container(
      //               height: 120,
      //               width: 120,
      //               alignment: Alignment.bottomRight,
      //               margin: EdgeInsets.fromLTRB(7, 7, 2, 5),
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 color: Colors.lightBlueAccent,
      //                 // border: Border.all(color: Colors.greenAccent, width: 6)
      //               ),
      //               // child: Center(
      //               //     child: Text('Ahlan wa Sahlan ya Salfiyyun!',
      //               //         style: TextStyle(fontSize: 20))),
      //             ),
      //             Container(
      //               height: 120,
      //               width: 120,
      //               alignment: Alignment.bottomRight,
      //               margin: EdgeInsets.fromLTRB(7, 7, 2, 5),
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 color: Colors.deepPurpleAccent,
      //                 // border: Border.all(color: Colors.greenAccent, width: 6)
      //               ),
      //               // child: Center(
      //               //     child: Text('Ahlan wa Sahlan ya Salfiyyun!',
      //               //         style: TextStyle(fontSize: 20))),
      //             ),
      //             Container(
      //               height: 120,
      //               width: 120,
      //               alignment: Alignment.bottomRight,
      //               margin: EdgeInsets.fromLTRB(7, 7, 2, 5),
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 color: Colors.teal,
      //                 // border: Border.all(color: Colors.greenAccent, width: 6)
      //               ),
      //               // child: Center(
      //               //     child: Text('Ahlan wa Sahlan ya Salfiyyun!',
      //               //         style: TextStyle(fontSize: 20))),
      //             ),
      //             Container(
      //               height: 120,
      //               width: 120,
      //               alignment: Alignment.bottomRight,
      //               margin: EdgeInsets.fromLTRB(7, 7, 2, 5),
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 color: Colors.black26,
      //                 // border: Border.all(color: Colors.greenAccent, width: 6)
      //               ),
      //               // child: Center(
      //               //     child: Text('Ahlan wa Sahlan ya Salfiyyun!',
      //               //         style: TextStyle(fontSize: 20))),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         height: 120,
      //         width: 120,
      //         alignment: Alignment.bottomRight,
      //         margin: EdgeInsets.fromLTRB(7, 7, 2, 5),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           color: Colors.green,
      //           // border: Border.all(color: Colors.greenAccent, width: 6)
      //         ),
      //         // child: Center(
      //         //     child: Text('Ahlan wa Sahlan ya Salfiyyun!',
      //         //         style: TextStyle(fontSize: 20))),
      //       ),
      //       Container(
      //         height: 120,
      //         width: 120,
      //         alignment: Alignment.bottomRight,
      //         margin: EdgeInsets.fromLTRB(5, 7, 2, 5),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           color: Colors.teal,
      //           // border: Border.all(color: Colors.greenAccent, width: 6)
      //         ),
      //         // child: Center(
      //         //     child: Text('Ahlan wa Sahlan ya Salfiyyun!',
      //         //         style: TextStyle(fontSize: 20))),
      //       ),
      //       Container(
      //         height: 120,
      //         width: 120,
      //         alignment: Alignment.bottomRight,
      //         margin: EdgeInsets.fromLTRB(5, 7, 2, 5),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           color: Colors.blueGrey,
      //           // border: Border.all(color: Colors.greenAccent, width: 6)
      //         ),
      //         // child: Center(
      //         //     child: Text('Ahlan wa Sahlan ya Salfiyyun!',
      //         //         style: TextStyle(fontSize: 20))),
      //       ),
      //       Container(
      //         height: 120,
      //         width: 120,
      //         alignment: Alignment.bottomRight,
      //         margin: EdgeInsets.fromLTRB(5, 7, 2, 5),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           color: Colors.redAccent,
      //           // border: Border.all(color: Colors.greenAccent, width: 6)
      //         ),
      //       ),
      //       Column(
      //         children: [Text('Pretty confused')],
      //       ),
      //     ],
      //   ),
      // ),
      body: ListView.builder(
          itemCount: myFavSheikhsList.length,
          itemBuilder: (context, index){
        return GestureDetector(
          onTap: (){snackBar(myFavSheikhsList[index]['title'], context);},
          child: Container(
            margin: EdgeInsets.all(10),
            width: double.infinity, // we took the full width with this
            height: 200,
            child: Image.network(myFavSheikhsList[index]['img']!, fit: BoxFit.fill,),


          ),
        );
      }),


      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.headphones),
        backgroundColor: Colors.lightGreen,
        onPressed: () {
          snackBar('listening', context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: Colors,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt_outlined), label: 'Scholars'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined), label: 'Lectures'),
          ],
          onTap: (int index) {
            if (index == 0) {
              snackBar('Home', context);
            }
            if (index == 1) {
              snackBar('Search for Scholars', context);
            }
            if (index == 2) {
              snackBar('All avialabe Lectures', context);
            }
          }),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.lightGreen),
                  // if we don't use this, color will automatically set to the app theme color
                  accountName: Text('Redwan Ahmed Fahim'),
                  accountEmail: Text('redsinfo@gmail.com',
                      style: TextStyle(color: Colors.blueGrey)),
                  currentAccountPicture: Image.network(
                      'https://iconape.com/wp-content/files/yb/61798/png/flutter-logo.png'),
                )),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                snackBar('Settings', context);
              },
            ),
            ListTile(
                leading: Icon(Icons.info),
                title: Text('Get to Know About Salafiyyah')),
            ListTile(
                leading: Icon(Icons.emoji_people), title: Text('About Us')),
            ListTile(
                leading: Icon(Icons.verified_sharp), title: Text('Version'))
          ],
        ),
      ),
    );
  }
}

