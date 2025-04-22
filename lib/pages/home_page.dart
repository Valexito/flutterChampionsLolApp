import 'package:flutter/material.dart';
import 'package:lol_champions/pages/cart_page.dart';
import 'package:lol_champions/pages/shope_page.dart';
import '../components/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//variable to track the icon taped (control navbar)
  int _selectedIndex = 0;

//metho update selecte index

//method when the user taps the bottom var
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//pages to display
  final List<Widget> _pages = [
//shop page
    const ShopPage(),

//cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 191, 223, 248),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Icon(Icons.menu),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),

      //Desing of the hamburger bar 
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 122, 186, 249),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
                DrawerHeader(child: Image.asset('assets/logo.png')),
                
                //next line (space)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.white,
                    ),
                ),

                //other pages

                //home
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.white,),
                    title: Text('Home', style: TextStyle(color: Colors.white),),
                  ),
                ),

                //about
                  const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.info, color: Colors.white,),
                    title: Text('About', style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),

          //Logout
             const Padding(
            padding: EdgeInsets.only(left: 25.0, bottom: 25.0),
            child: ListTile(
              leading: Icon(Icons.logout, color: Colors.white,),
              title: Text('Logout', style: TextStyle(color: Colors.white),),
            ),
          ),

          ],
        ),
      ),

      body: _pages[_selectedIndex],
    );
  }
}
