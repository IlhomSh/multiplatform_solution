import 'package:flutter/material.dart';
import 'package:multiplatform_solutions/adaptive_list/menu.dart';
import 'package:multiplatform_solutions/generated/assets.dart';

import 'adaptive_list_screen.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                showModal(context);
              },
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              tileColor: Colors.blue,
              leading: const CircleAvatar(
                backgroundImage: AssetImage(Assets.assetsImg),
                radius: 30,
              ),
              title: Text(item.title),
              subtitle: Text(item.description),
            ),
          );
        });
  }


  void showModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Menu();
        });
  }
}



