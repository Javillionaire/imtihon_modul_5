import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class AppBook extends StatelessWidget {
  const AppBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop('/appointment');
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xFF232F55),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Top Doctor',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xFF232F55)),
        ),
        backgroundColor: Colors.white,
        elevation: .0,
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            Container(
                height: 54,
                width: 362,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border:
                        Border.all(width: 2, color: const Color(0xFFF7F8F8)),
                    color: Colors.white),
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 19, bottom: 18),
                      border: InputBorder.none,
                      hintText: 'Search Doctor',
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
            const SizedBox(
              height: 20,
            ),
            const ApoointmentWidgetDoc(
              imagePath: 'assets/images/Mask group.png',
              color: Color(0xFFB393FF),
              subtitle: 'Heart Surgeon, London, England',
              title: 'Dr. Maria Wastan',
              iconData: Icons.favorite,
            ),
            const ApoointmentWidgetDoc(
              imagePath: 'assets/images/Mask group2.png',
              color: Color(0xFFB393FF),
              subtitle: 'Heart Surgeon, London, England',
              title: 'Dr. Maria Wastan',
              iconData: Icons.favorite_outline,
            ),
            const ApoointmentWidgetDoc(
              imagePath: 'assets/images/Mask group1.png',
              color: Color(0xFFB393FF),
              subtitle: 'Heart Surgeon, London, England',
              title: 'Dr. Maria Wastan',
              iconData: Icons.favorite,
            ),
            const ApoointmentWidgetDoc(
              imagePath: 'assets/images/Mask group3.png',
              color: Color(0xFFB393FF),
              subtitle: 'Heart Surgeon, London, England',
              title: 'Dr. Maria Wastan',
              iconData: Icons.favorite_outline,
            ),
            const ApoointmentWidgetDoc(
              imagePath: 'assets/images/Mask group2.png',
              color: Color(0xFFB393FF),
              subtitle: 'Heart Surgeon, London, England',
              title: 'Dr. Maria Wastan',
              iconData: Icons.favorite,
            ),
            const ApoointmentWidgetDoc(
              imagePath: 'assets/images/Mask group1.png',
              color: Color(0xFFB393FF),
              subtitle: 'Heart Surgeon, London, England',
              title: 'Dr. Maria Wastan',
              iconData: Icons.favorite_outline,
            ),
          ],
        ),
      )),
    );
  }
}

class ApoointmentWidgetDoc extends StatelessWidget {
  final IconData iconData;
  final Color? color;
  final String? title;
  final String? subtitle;
  final String? imagePath;
  const ApoointmentWidgetDoc({
    Key? key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, right: 26, left: 26),
      child: Container(
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 2, color: const Color(0xFFF7F8F8)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Badge(
                    elevation: .0,
                    position: const BadgePosition(top: 1, end: 1),
                    badgeColor: const Color(0xFF8EF4BC),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(imagePath!),
                              fit: BoxFit.contain)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset('assets/images/Star.png'),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text(
                      '4.8',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  title!,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF263257)),
                ),
                const SizedBox(
                  height: 9,
                ),
                Text(
                  subtitle!,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF7D8BB7)),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 34,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF7F8F8)),
                        child: const Text(
                          'Appointment',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF222E54)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color(0xFFF7F8F8),
                            borderRadius: BorderRadius.circular(10)),
                        height: 34,
                        width: 34,
                        child: const Icon(
                          Icons.chat,
                          color: Color(0xFFB28CFF),
                          size: 15,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color(0xFFF7F8F8),
                            borderRadius: BorderRadius.circular(10)),
                        height: 34,
                        width: 34,
                        child: Icon(
                          iconData,
                          color: const Color(0xFFB28CFF),
                          size: 15,
                        )),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
