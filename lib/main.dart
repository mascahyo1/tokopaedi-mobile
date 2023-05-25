import 'package:flutter/material.dart';

void main() => runApp(EcommerceApp());

class EcommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isSearching = false;
  TextEditingController _searchController = TextEditingController();
  FocusNode _searchFocusNode = FocusNode();

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  void _startSearch() {
    setState(() {
      _isSearching = true;
      _searchFocusNode.requestFocus();
    });
    FocusScope.of(context).requestFocus(_searchFocusNode);
  }

  void _stopSearch() {
    setState(() {
      _isSearching = false;
      _searchController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearching
            ? TextField(
                controller: _searchController,
                focusNode: _searchFocusNode,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  // Perform search functionality
                  print('Searching for: $value');
                },
                onSubmitted: (value) {
                  // Perform search functionality
                  print('Searching for: $value');
                },
              )
            : Text('E-commerce App'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: _isSearching ? _stopSearch : _startSearch,
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
              // Handle popup menu selection
              if (value == 'profile') {
                // Navigate to profile screen
              } else if (value == 'logout') {
                // Perform logout functionality
              }
            },
          ),
        ],
      ),
      body: Center(
        child: Text('E-commerce App Content'),
      ),
    );
  }
}
