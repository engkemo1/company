import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/screens/components/profile_info.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        ProfileInfo()
      ],
    );
  }
}
