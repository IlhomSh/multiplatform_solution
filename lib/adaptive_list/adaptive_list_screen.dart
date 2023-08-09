import 'package:flutter/material.dart';
import 'package:multiplatform_solutions/adaptive_list/grid.dart';
import 'package:multiplatform_solutions/adaptive_list/vertical_list.dart';
import 'package:multiplatform_solutions/generated/assets.dart';

class Item {
  String title;
  String description;

  Item({required this.title, required this.description});
}

final Item item = Item(
    title: "Том Круз",
    description: "Актер Режиссер Сценарист Продюсер Исполнительный продюсер");

class AdaptiveListScreen extends StatefulWidget {
  const AdaptiveListScreen({super.key});

  @override
  State<AdaptiveListScreen> createState() => _AdaptiveListScreenState();
}

class _AdaptiveListScreenState extends State<AdaptiveListScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Grid(); //VerticalList();
    });
  }
}
