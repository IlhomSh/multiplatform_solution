import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HtmlBody extends StatefulWidget {
  const HtmlBody({super.key});

  @override
  State<HtmlBody> createState() => _HtmlBodyState();
}

class _HtmlBodyState extends State<HtmlBody> {
  String _htmlText="";
  TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: SingleChildScrollView(child: Text(_htmlText))) ,

        Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: TextFormField(
                    controller: textEditingController,

                    decoration: InputDecoration(
                      border: OutlineInputBorder()
                    ),
                  )),
                  SizedBox(width: 10,),
                  ElevatedButton(onPressed: load, child: Text("Load"))
                ],
              ),
              Text("APPLICATION RUNNING ON ${kIsWeb?"WEB":Platform.operatingSystem.toUpperCase()}")
            ],
          ),
        )


      ],
    );
  }
  Future<void> load() async {

    final result=await http.get(Uri.parse(textEditingController.text));

    setState(() {
      _htmlText=result.body;
    });
  }

  @override
  void dispose() {

    textEditingController.dispose();
    super.dispose();
  }
}
