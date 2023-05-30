
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/screens/components/tag_list.dart';
import '../../constants/constants.dart';
import '../../constants/responsive.dart';
import 'custom_appbar.dart';
import 'job_list.dart';

class ShopContent extends StatelessWidget {
  const ShopContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(appPadding),
        child: Column(
          children: [
            const CustomAppbar(),
            const SizedBox(
              height: appPadding,
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: appPadding,
                          ),
                          TagsList(),
                          Container(
                              margin: EdgeInsets.only(bottom: 40),
                              child: JobList()),
                            const SizedBox(
                              height: appPadding,
                            ),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
