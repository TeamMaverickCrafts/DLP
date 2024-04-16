import 'package:daily_lancers/Chat/UserChat.dart';
import 'package:daily_lancers/HomePage/HomePage.dart';
import 'package:daily_lancers/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BotNav extends StatefulWidget {
  const BotNav({Key? key}) : super(key: key);

  @override
  State<BotNav> createState() => _BotNavState();
}

class _BotNavState extends State<BotNav> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          const Home(),
          const profile(),
          const Add(),
          ChatView(),
          const Add(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 110,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24), // Adjust the top-left radius here
            topRight: Radius.circular(24), // Adjust the top-right radius here
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/Components/BottomNav/1.svg',
                width: 26,
                height: 26,
                color:
                    _selectedIndex == 0 ? Color(0xFFFCA34D) : Color(0xFFA49EB5),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Components/BottomNav/2.svg',
                  width: 26,
                  height: 26,
                  color: _selectedIndex == 1
                      ? Color(0xFFFCA34D)
                      : Color(0xFFA49EB5)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 40.0, // Adjust the size of the circular container
                height: 40.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF130160),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Components/BottomNav/4.svg',
                  width: 26,
                  height: 26,
                  color: _selectedIndex == 3
                      ? Color(0xFFFCA34D)
                      : Color(0xFFA49EB5)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Components/BottomNav/5.svg',
                  width: 26,
                  height: 26,
                  color: _selectedIndex == 4
                      ? Color(0xFFFCA34D)
                      : Color(0xFFA49EB5)),
              label: '',
            ),
          ],
          backgroundColor: Colors.white, // Change the background color here
          iconSize: 31,
          selectedItemColor:
              const Color(0xffFCA34D), // Change the selected item color here
          unselectedItemColor:
              Colors.grey, // Change the unselected item color here
          selectedFontSize: 14, // Adjust the selected item font size here
          unselectedFontSize: 12, // Adjust the unselected item font size here
          selectedLabelStyle: const TextStyle(
              fontWeight:
                  FontWeight.bold), // Adjust the selected item label style here
          // borderRadius: BorderRadius.circular(10), // Apply border radius here
        ),
      ),
    );
  }
}

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        'assets/working.svg',
        width: double.infinity,
      ),
    );
  }
}
