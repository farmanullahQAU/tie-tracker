import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/dropdown_form_field.dart';
import '../../components/mybutton.dart';
import '../../components/text_field.dart';
import 'entry_form_controller.dart';

class InventryForm extends StatelessWidget {
  final _entryFormController = Get.find<InventryFormController>();
  InventryForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Entry Form"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 30, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: TxtField(
                      hintText: "Mold...",
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: TxtField(
                      hintText: "Tie#",
                    ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: TxtField(
                      hintText: "Weight...",
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: DropDownField(
                            onChanged: (status) {
                              print("status");
                              print(status);
                            },
                            items: _entryFormController.statusValuesList,
                            hintText: "Status"))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: DropDownField(
                            onChanged: (partSize) {
                              print("part size");
                              print(partSize);
                            },
                            items: _entryFormController.partSizesList,
                            hintText: "Part size")),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: DropDownField(
                            onChanged: (inspection) {
                              print("inspecton");
                              print(inspection);
                            },
                            items: _entryFormController.inspectionList,
                            hintText: "Inspection"))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TxtField(
                  hintText: "Temprature",
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Flexible(
                      child: SizedBox(
                          width: Get.width * 0.8,
                          child: MyButton(
                            buttonText: "SUBMITT",
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: SizedBox(
                          width: Get.width * 0.8,
                          child: MyButton(
                            buttonText: "RESET",
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
