/*
 * @Author       : Linloir
 * @Date         : 2022-03-10 10:35:47
 * @LastEditTime : 2022-03-10 13:06:37
 * @Description  : 
 */

import 'package:flutter/material.dart';

class SelectNotification extends Notification {
  const SelectNotification({this.selection});

  final int selection;
}

class GroupSharedData extends InheritedWidget {
  const GroupSharedData({Key key, child, this.selected}) : super(key: key, child: child);

  final int selected;

  static GroupSharedData of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<GroupSharedData>();

  @override
  bool updateShouldNotify(GroupSharedData oldWidget) {
    return oldWidget.selected != selected;
  }
}