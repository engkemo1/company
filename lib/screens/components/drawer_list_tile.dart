import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({Key? key, required this.title, required this.iconData, required this.tap}) : super(key: key);

  final String title;
  final IconData iconData;
  final VoidCallback tap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: tap,
      horizontalTitleGap: 0.0,
      leading: Icon(iconData,color: Colors.grey,),
      title: Text(title,style: TextStyle(color: grey),),
    );
  }
}
