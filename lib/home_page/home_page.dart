import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<TabItem> items = [
    const TabItem(
      icon: Icons.home_outlined,
      // title: 'Home',
    ),
    const TabItem(icon: Icons.calendar_month
        // title: 'Home',
        ),
    const TabItem(
      icon: Icons.chat_outlined,
      // title: 'Home',
    ),
    const TabItem(
      icon: Icons.add_circle_outline,
    )
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverAppBar(
            pinned: true,
            elevation: .0,
            expandedHeight: 320,
            backgroundColor: const Color(0xFFB28CFF),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35))),
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.fadeTitle,
                StretchMode.blurBackground,
                StretchMode.zoomBackground
              ],
              expandedTitleScale: 1,
              background: Stack(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 26,
                            ),
                            const Icon(Icons.menu),
                            const Spacer(),
                            Container(
                                height: 56,
                                width: 56,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/1d862c3f85c55626b7708c56c3c2ef6c.png')))),
                            const SizedBox(
                              width: 26,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 26),
                      child: Text(
                        'Welcome Back',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 26),
                      child: Text(
                        'Let\'s find\nyour top doctor!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                  ],
                ),
              ]),
              centerTitle: true,
              title: SafeArea(
                child: Container(
                    height: 60,
                    width: 362,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: const TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 19, bottom: 18),
                          border: InputBorder.none,
                          hintText: 'Search health issue...',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF8A96BC),
                          ),
                          icon: Padding(
                            padding: EdgeInsets.only(left: 24),
                            child: Icon(
                              Icons.search,
                              size: 22,
                              color: Color(0xFF8A96BC),
                            ),
                          )),
                    )),
              ),
            )),
        SliverToBoxAdapter(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              const SizedBox(
                height: 28,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 26),
                child: Text(
                  'Categories',
                  style: TextStyle(
                      color: Color(0xFF232F55),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  BoxWidget(
                    subtitle: 'All',
                    path: 'assets/images/Group 24.png',
                  ),
                  BoxWidget(
                    subtitle: 'Cardiology',
                    path: 'assets/images/Group 20.png',
                  ),
                  BoxWidget(
                    subtitle: 'Medicine',
                    path: 'assets/images/Group 21.png',
                  ),
                  BoxWidget(
                    subtitle: 'General',
                    path: 'assets/images/Group 25.png',
                  )
                ],
              ),
              const SizedBox(
                height: 26,
              ),
              const ApoointmentWidget(
                imagePath: 'assets/images/Mask group.png',
                color: Color(0xFFB393FF),
                subtitle: 'Heart Surgeon, London, England',
                title: 'Dr. Maria Wastan',
              ),
              const ApoointmentWidget(
                imagePath: 'assets/images/Screenshot_3-removebg-preview 2.png',
                color: Color(0xFFB393FF),
                subtitle: 'General Dentist',
                title: 'Dr. Stevi Jessi',
              ),
              const ApoointmentWidget(
                imagePath: 'assets/images/Screenshot_3-removebg-preview 1.png',
                color: Color(0xFFB393FF),
                subtitle: 'General Dentist',
                title: 'Dr. Lorri Warf',
              )
            ]))
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: BottomBarFloating(
            iconSize: 22,
            indexSelected: selectedIndex,
            bottom: 30,
            top: 30,
            borderRadius: BorderRadius.circular(41),
            colorSelected: const Color(0xFFB28CFF),
            backgroundColor: Colors.white,
            items: items,
            color: Colors.blueGrey,
            onTap: (int index) {
              setState(() {
                selectedIndex = index;
              });
            }),
      ),
    );
  }
}
