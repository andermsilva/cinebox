import 'package:flutter/material.dart';

class HomeBottomNavItem extends BottomNavigationBarItem {
  HomeBottomNavItem({
    required String label,
    required String activeAsset,
    required String inactiveAsset,
    double icomWidth = 18,
    double icomHeight = 18,
    double marginTop = 20,
  }) : super(
         icon: Container(
           margin: EdgeInsets.only(top: marginTop, bottom: 5),
           child: Image.asset(
             inactiveAsset,
             width: icomWidth,
             height: icomHeight,
           ),
         ),
         activeIcon: Container(
           margin: EdgeInsets.only(top: marginTop, bottom: 5),
           child: Image.asset(
             activeAsset,
             width: icomWidth,
             height: icomHeight,
           ),
         ),
         label: label,
       );

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
