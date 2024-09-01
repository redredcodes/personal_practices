import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveApp());
}

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, BoxConstraints constraints) {
          if (constraints.maxWidth < 641) {
            // UI for Mobile...
            return MobileLayout();
          } else if (constraints.maxWidth > 641 &&
              constraints.maxWidth < 1008) {
            // UI for Tablet...
            return TabletLayout();
          } else {
            return DesktopLayout();
          }
        },
      ),
    );
  }
}

// Mobile UI
class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 8, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'HUMMING \nBIRD .',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        actions: [],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Text('FLUTTER WEB. \nTHE BASICS',
                style: TextStyle(
                    fontWeight: FontWeight.w900, fontSize: 40, height: 1),
                textAlign: TextAlign.center),
            SizedBox(
              height: 25,
            ),
            Text(
              maxLines: 4,
              textAlign: TextAlign.center,
              'In this course we will go over the basics of using \nFlutter Web for development. Topics will include \nResponsive Layout, Deploying, Font Changes, Hover functionality, Modals and more.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Join Course',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen[500],
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
            )
          ],
        ),
      ),
      drawer: Material(
        elevation: 15,
        child: Drawer(
          width: 240,
          child: ListView(
            // padding: EdgeInsets.zero,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[500],
                      ),
                      // padding: EdgeInsets.symmetric(vertical: 0, horizontal: 80),
                      child: const SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'SKILL UP NOW',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'TAP HERE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )),
                  const Padding(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.play_circle, color: Colors.black),
                          title: Text('Episodes'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.info,
                            color: Colors.black,
                          ),
                          title: Text('About'),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
// done ✅

// Tablet UI
class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'HUMMING \nBIRD .',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
            child: Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Episodes',
                      style: TextStyle(color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {},
                    child:
                        Text('About', style: TextStyle(color: Colors.black))),
              ],
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 95,
              ),
              const Text('FLUTTER WEB. \nTHE BASICS',
                  style: TextStyle(
                      fontWeight: FontWeight.w900, fontSize: 60, height: 1),
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 15,
              ),
              const Text(
                maxLines: 4,
                textAlign: TextAlign.center,
                'In this course we will go over the basics of using \nFlutter Web for development. Topics will include \nResponsive Layout, Deploying, Font Changes, Hover \nfunctionality, Modals and more.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen[500],
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: Text(
                  'Join Course',
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// done ✅

// Desktop UI
class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'HUMMING \nBIRD .',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
            child: Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Episodes',
                      style: TextStyle(color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {},
                    child:
                        const Text('About', style: TextStyle(color: Colors.black))),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(70),
        child: Row(
          children: [
            // 1st Column
            Expanded(
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'FLUTTER WEB. \nTHE BASICS',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 80,
                        height: 1),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    maxLines: 4,
                    //textAlign: TextAlign.center,
                    'In this course we will go over the basics of using \nFlutter Web for development. Topics will include \nResponsive Layout, Deploying, Font Changes, Hover \nfunctionality, Modals and more.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column( crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: SizedBox( width: 200,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreen[500],
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        child: const Text(
                          'Join Course',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Appbar
