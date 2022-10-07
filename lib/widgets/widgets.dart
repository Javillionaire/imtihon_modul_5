import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class WeekWidget extends StatelessWidget {
  final String? day;
  final String? dayOfWeek;
  final Color? colorDay;
  final Color? colorDayOfWeek;
  final Color? backgroundColor;
  const WeekWidget({
    Key? key,
    required this.day,
    required this.dayOfWeek,
    required this.colorDay,
    required this.colorDayOfWeek,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 64,
      width: 60,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2, color: const Color(0xFFF7F8F8))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            day!,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: colorDay),
          ),
          Text(
            dayOfWeek!,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: colorDayOfWeek),
          )
        ],
      ),
    );
  }
}

class HourWidget extends StatelessWidget {
  final String? hour;

  final Color? colorHour;
  final Color? backgroundColor;
  const HourWidget({
    Key? key,
    this.backgroundColor,
    required this.hour,
    required this.colorHour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 36,
        width: 76,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 2, color: const Color(0xFFF7F8F8))),
        child: Text(
          hour!,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w500, color: colorHour),
        ));
  }
}

class CardWidget extends StatelessWidget {
  final String? text1;
  final Color? color;
  final String? text2;
  const CardWidget({
    Key? key,
    required this.text1,
    required this.text2,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 76,
      width: 104,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text1!,
            style: TextStyle(
                color: color!, fontSize: 26, fontWeight: FontWeight.w600),
          ),
          Text(
            text2!,
            style: const TextStyle(
                color: Color(0XFF8A96BC),
                fontSize: 12,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

class ApoointmentWidget extends StatelessWidget {
  final Color? color;
  final String? title;
  final String? subtitle;
  final String? imagePath;
  const ApoointmentWidget({
    Key? key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.imagePath,
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
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/appointment');
                  },
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  final String? path;
  final String? subtitle;
  const BoxWidget({
    Key? key,
    required this.path,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2, color: const Color(0xFFF7F8F8)),
              image: DecorationImage(
                image: AssetImage(path!),
              )),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          subtitle!,
          style: const TextStyle(
              color: Color(0xFF7D8BB7),
              fontSize: 10,
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
