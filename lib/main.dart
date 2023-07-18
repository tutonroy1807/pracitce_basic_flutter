import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New App"),
        titleSpacing: 30,
        toolbarHeight: 70,
        toolbarOpacity: 1,
        elevation: 14,
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar("Click To Login and enter your app..", context);
              },
              icon: Icon(Icons.login)),
          IconButton(
              onPressed: () {
                MySnackBar("Message Box", context);
              },
              icon: Icon(Icons.message)),
          IconButton(
              onPressed: () {
                MySnackBar("Its Your Profile.. ", context);
              },
              icon: Icon(Icons.person)),
          IconButton(
              onPressed: () {
                MySnackBar("Logout and exit your app", context);
              },
              icon: Icon(Icons.logout_outlined)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 30,
        child: Icon(Icons.add_a_photo_rounded),
        onPressed: () {
          MySnackBar("Click to image", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_sharp), label: "Account"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("Its a home", context);
          }
          if (index == 1) {
            MySnackBar("Search anyting what you want!!!", context);
          }
          if (index == 2) {
            MySnackBar("Its Your account", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [

            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
                  accountName: Text("Prosenjit Roy", style: TextStyle(color: Colors.black),),
                  accountEmail: Text("prosenjitroy1807@gmail.com", style: TextStyle(color: Colors.black),),
                  currentAccountPicture: Image.network("https://png.pngtree.com/png-vector/20190307/ourmid/pngtree-vector-edit-profile-icon-png-image_762931.jpg"),
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackBar("Its a Home Button", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                MySnackBar("Its Your Profile", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {
                MySnackBar("Change your Setting", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page_rounded),
              title: Text("Contract"),
              onTap: () {
                MySnackBar("Contract", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              onTap: () {
                MySnackBar("Contract My Email", context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
