import 'package:flutter/material.dart';
import 'package:multiplatform_solutions/adaptive_list/adaptive_list_screen.dart';
import 'package:multiplatform_solutions/adaptive_list/menu.dart';
import 'package:multiplatform_solutions/generated/assets.dart';
import 'package:popover/popover.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (ctx, index) {
          return Padding(
            key: ValueKey(index.toString()),
            padding: const EdgeInsets.all(8.0),

              child: Container(
                key: ObjectKey(index.toString()),
                child: GestureDetector(
                  onTap: () {
                    showPopover(
                        context: context,
                        direction: PopoverDirection.bottom,
                        bodyBuilder: (ctx) {
                          return Menu();
                        });
                  },child:Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.red, borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(Assets.assetsImg),
                          radius: 40,
                        ),
                        Text(item.title),
                        Flexible(
                            child: Text(
                          item.description,

                              textAlign: TextAlign.center,
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
