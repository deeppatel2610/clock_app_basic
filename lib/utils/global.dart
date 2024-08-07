import 'package:flutter/material.dart';

DateTime dateTime = DateTime.now();

String img =
    "https://ask.libreoffice.org/uploads/asklibo/original/3X/3/5/35664d063435f940bda4cb3bb31ea0a6c5fed2f4.gif";

List drawerList = [
  {
    'icon': Icons.interests,
    'name': 'Interests',
  },
  {
    'icon': Icons.play_circle_sharp,
    'name': 'My course',
  },
  {
    'icon': Icons.done_all,
    'name': 'Todo/done',
  },
  {
    'icon': Icons.article,
    'name': 'Online Article',
  },
  {
    'icon': Icons.star_rate_rounded,
    'name': 'Rate Us',
  },
  {
    'icon': Icons.support,
    'name': 'Support',
  },
  {
    'icon': Icons.settings,
    'name': 'Settings',
  },
  {
    'icon': Icons.login,
    'name': 'Log out',
  },
];

gifUdf()
{
  if(dateTime.hour>=6 && dateTime.hour<9)
    {
      return gif[0];
    }
  else if(dateTime.hour>=9 && dateTime.hour<12)
    {
      return gif[1];
    }
  else if(dateTime.hour>=12 && dateTime.hour<16)
    {
      return gif[2];
    }
  else if(dateTime.hour>=16 && dateTime.hour<19)
  {
    return gif[3];
  }
  else if(dateTime.hour>=19 && dateTime.hour<24)
  {
    return gif[4];
  }
  else if(dateTime.hour>=0 && dateTime.hour<6)
  {
    return gif[5];
  }
}

List gif = [
  'assets/img/1.gif',
  'assets/img/2.jpg',
  'assets/img/3.jpg',
  'assets/img/4.gif',
  'assets/img/5.gif',
  'assets/img/6.gif'
];

List days = [
  'Mon',
  'Tue',
  'Wed',
  'Thu',
  'Fri',
  'Sat',
  'Sun',
];
List month = [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec',
];
