import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/screens/add_job_screen.dart';
import 'package:responsive_admin_dashboard/screens/authentication/login_view.dart';
import 'package:responsive_admin_dashboard/screens/shop_screen.dart';

import '../chat/chat_screen.dart';
import '../chat/list_chats.dart';

class DrawerMenu extends StatefulWidget {
  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  PageController page = PageController();

  SideMenuController sideMenu = SideMenuController();
  @override
  void initState() {
    sideMenu.addListener((p0) {
      page.jumpToPage(p0);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    List<SideMenuItem> items = [
      SideMenuItem(
        // Priority of item to show on SideMenu, lower value is displayed at the top
        priority: 0,
        title: 'Shop',
        onTap: (page, _) {
          sideMenu.changePage(page);
        },
        icon: Icon(Icons.shop),
      ),
      SideMenuItem(
        priority: 1,
        title: 'Add',
        onTap: (page, _) {
          sideMenu.changePage(page);
        },        icon: Icon(Icons.add),

      ),
      SideMenuItem(
        priority: 2,
        title: 'Chat',
        onTap: (page, _) {
          sideMenu.changePage(page);
        },        icon: Icon(Icons.chat),

      ),
      SideMenuItem(
        priority: 3,
        title: 'Logout',
        onTap: (page, _) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LoginView()));

        },        icon: Icon(Icons.logout),
      ),
    ];

    return Scaffold(
      body: Row(
        children: [
          SideMenu(
            controller: sideMenu,
            footer: Text('demo'),
            onDisplayModeChanged: (mode) {
              print(mode);
            },
            items: items,
          ),
          Expanded(child: PageView(
            controller: page,
            children: [
              ShopScreen(),
              AddJobScreen(),
              ListChats(),

            ],
          ))
        ],
      ),
    );
  }
}
