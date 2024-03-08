import 'package:demo_9/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final void Function()? onProfile;
  final void Function()? onSignOut;
  const MyDrawer({super.key, required this.onProfile, required this.onSignOut});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 227, 209, 67),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //header
              const DrawerHeader(
                child: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 64,
                ),
              ),

              //home list title
              MyListTile(
                icon: Icons.home,
                text: 'Home',
                onTap: () => Navigator.pop(context),
              ),

              //profile list title
              MyListTile(
                icon: Icons.person,
                text: 'Profile',
                onTap: onProfile,
              ),
            ],
          ),
          //logout list title
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: MyListTile(
              icon: Icons.logout,
              text: 'LogOut',
              onTap: onSignOut,
            ),
          )
        ],
      ),
    );
  }
}
