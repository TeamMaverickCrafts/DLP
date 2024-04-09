import 'package:daily_lancers/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class HomeFeed extends StatefulWidget {
  const HomeFeed({Key? key}) : super(key: key);

  @override
  State<HomeFeed> createState() => _HomeFeedState();
}

class _HomeFeedState extends State<HomeFeed> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Home(),
    AddPage(),
    AddPage(),
    AddPage(),
    AddPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Close the app when the back button is pressed
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: SizedBox(
          // height: 95.0,
          child: buildBottomNavigationBar(),
        ),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF8DC73F),
      unselectedItemColor: Colors.white,
      iconSize: 30.0,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/Components/BottomNav/1.svg',
            width: 26,
            height: 26,
            color: _currentIndex == 0
                ? const Color(0xFF130160)
                : Color(0xFFA49EB5),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/Components/BottomNav/2.svg',
            width: 26,
            height: 26,
            color: _currentIndex == 1
                ? const Color(0xFF130160)
                : Color(0xFFA49EB5),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 50.0, // Adjust the size of the circular container
            height: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF130160),
            ),
            child: IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                // Handle the press of the circular container
              },
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/Components/BottomNav/4.svg',
            width: 26,
            height: 26,
            color: _currentIndex == 3
                ? const Color(0xFF130160)
                : Color(0xFFA49EB5),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/Components/BottomNav/5.svg',
            width: 26,
            height: 26,
            color: _currentIndex == 4
                ? const Color(0xFF130160)
                : Color(0xFFA49EB5),
          ),
          label: '',
        ),
      ],
      elevation: 0,
      selectedLabelStyle: const TextStyle(fontSize: 13.0),
      unselectedLabelStyle: const TextStyle(fontSize: 12.0),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Page'),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Search Page'),
    );
  }
}

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Add Page'),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Favorites Page'),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Page'),
    );
  }
}
