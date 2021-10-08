
import 'package:flutter/material.dart';
import 'package:openscan/presentation/screens/about_screen.dart';
import 'package:openscan/presentation/screens/demo_screen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.55,
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: <Widget>[
          Spacer(),
          Image.asset(
            'assets/scan_g.jpeg',
            scale: 6,
          ),
          Spacer(),
          Divider(
            thickness: 0.2,
            indent: 6,
            endIndent: 6,
            color: Colors.white24,
          ),
          ListTile(
            title: Center(
              child: Text(
                'Home',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            onTap: () => Navigator.pop(context),
          ),
          Divider(
            thickness: 0.2,
            indent: 6,
            endIndent: 6,
            color: Colors.white24,
          ),
          ListTile(
            title: Center(
              child: Text(
                'About',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, AboutScreen.route);
            },
          ),
          Divider(
            thickness: 0.2,
            indent: 6,
            endIndent: 6,
            color: Colors.white24,
          ),
          ListTile(
            title: Center(
              child: Text(
                'Demo',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DemoScreen(
                    showSkip: false,
                  ),
                ),
              );
            },
          ),
          Divider(
            thickness: 0.2,
            indent: 6,
            endIndent: 6,
            color: Colors.white24,
          ),
          Spacer(
            flex: 4,
          ),
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
            color: Theme.of(context).colorScheme.secondary,
          ),
          Spacer(),
        ],
      ),
    );
  }
}