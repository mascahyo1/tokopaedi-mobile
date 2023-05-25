import 'package:flutter/material.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('E-commerce App'),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Handle search functionality
          },
        ),
        PopupMenuButton(
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                child: Text('Profile'),
                value: 'profile',
              ),
              PopupMenuItem(
                child: Text('Logout'),
                value: 'logout',
              ),
            ];
          },
          onSelected: (value) {
            if (value == 'profile') {
              // Navigate to profile screen
            } else if (value == 'logout') {
              // Perform logout functionality
            }
          },
        ),
      ],
    );
  }
}
