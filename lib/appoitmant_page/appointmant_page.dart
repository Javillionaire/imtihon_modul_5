import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop('/home');
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xFF232F55),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Appointment',
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Badge(
                borderSide: const BorderSide(color: Colors.white, width: 1),
                elevation: .0,
                padding: const EdgeInsets.all(8),
                badgeColor: const Color(0xFF8EF4BC),
                position: const BadgePosition(
                  top: 1,
                  end: 1,
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 92,
                  width: 87,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/Screenshot_2-removebg-preview 1.png')),
                      color: const Color(0xFFB393FF),
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                'Dr. Maria Waston',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF263257),
                    fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Group 20.png',
                    height: 10,
                    width: 10,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Cardio Specialist',
                    style: TextStyle(
                        color: Color(0xFF7D8BB7),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.center,
                height: 106,
                width: 362,
                decoration: BoxDecoration(
                    color: const Color(0xFFB28CFF),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    CardWidget(
                      color: Color(0XFFB28CFF),
                      text1: '350+',
                      text2: 'Patients',
                    ),
                    CardWidget(
                        text1: '15+',
                        text2: 'Exp. years',
                        color: Color(0xFF9DEAC0)),
                    CardWidget(
                        text1: '284+',
                        text2: 'Reviews',
                        color: Color(0xFFFF9A9A))
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      'About Doctor',
                      style: TextStyle(
                          color: Color(0xFF263257),
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Text(
                  'Dr.Maria Waston is the top most Cardiologist specialist in Nanyang Hospotalat London. She is available for private consultation.',
                  style: TextStyle(
                      color: Color(0xFF8A96BC),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      'Schedules',
                      style: TextStyle(
                          color: Color(0xFF263257),
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Text(
                    'August',
                    style: TextStyle(
                        color: Color(0xFF8A96BC),
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    CupertinoIcons.chevron_right,
                    color: Color(0xFF222E54),
                    size: 16,
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40),
                height: 66,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    WeekWidget(
                      day: '7',
                      dayOfWeek: 'Sun',
                      colorDay: Color(0xFF263257),
                      colorDayOfWeek: Color(0xFF8A96BC),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    WeekWidget(
                      day: '8',
                      dayOfWeek: 'Mon',
                      colorDay: Color(0xFF263257),
                      colorDayOfWeek: Color(0xFF8A96BC),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    WeekWidget(
                      backgroundColor: Color(0xFFB28CFF),
                      day: '9',
                      dayOfWeek: 'Tue',
                      colorDay: Colors.white,
                      colorDayOfWeek: Colors.white,
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    WeekWidget(
                      day: '10',
                      dayOfWeek: 'Wed',
                      colorDay: Color(0xFF263257),
                      colorDayOfWeek: Color(0xFF8A96BC),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    WeekWidget(
                      day: '11',
                      dayOfWeek: 'Thur',
                      colorDay: Color(0xFF263257),
                      colorDayOfWeek: Color(0xFF8A96BC),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    WeekWidget(
                      day: '12',
                      dayOfWeek: 'Fri',
                      colorDay: Color(0xFF263257),
                      colorDayOfWeek: Color(0xFF8A96BC),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      'Visitor Hour',
                      style: TextStyle(
                          color: Color(0xFF263257),
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.only(left: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        HourWidget(
                            hour: '11:00AM', colorHour: Color(0xFF8A96BC)),
                        SizedBox(
                          width: 8,
                        ),
                        HourWidget(
                          hour: '12:00AM',
                          colorHour: Colors.white,
                          backgroundColor: Color(0XFFB28CFF),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        HourWidget(
                            hour: '01:00AM', colorHour: Color(0xFF263257)),
                        SizedBox(
                          width: 8,
                        ),
                        HourWidget(
                            hour: '02:00AM', colorHour: Color(0xFF8A96BC)),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        HourWidget(
                            hour: '03:00AM', colorHour: Color(0xFF263257)),
                        SizedBox(
                          width: 8,
                        ),
                        HourWidget(
                            hour: '04:00AM', colorHour: Color(0xFF8A96BC)),
                        SizedBox(
                          width: 8,
                        ),
                        HourWidget(
                            hour: '05:00AM', colorHour: Color(0xFF263257)),
                        SizedBox(
                          width: 8,
                        ),
                        HourWidget(
                            hour: '06:00AM', colorHour: Color(0xFF263257)),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFB28CFF),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 58,
                width: 332,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/appbook');
                  },
                  child: const Text(
                    'Book Appointment',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
