import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/constants/responsive.dart';
import 'package:responsive_admin_dashboard/controllers/controller.dart';
import 'components/add_job.dart';
import 'components/shop_content.dart';
import 'components/drawer_menu.dart';
import 'package:provider/provider.dart';

class AddJobScreen extends StatelessWidget {
  const AddJobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: DrawerMenu(),
      key: context.read<Controller>().scaffoldKey,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) Expanded(child: DrawerMenu(),),
            Expanded(
              flex: 5,
              child: AddJobContent(),
            )
          ],
        ),
      ),
    );
  }
}
