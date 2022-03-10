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
            child: Form(
              key: _entryFormController.formKey,

              autovalidateMode:AutovalidateMode.onUserInteraction,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: TxtField(
                            controller: _entryFormController.moldController,
                        hintText: "Mold...",
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TxtField(
                            validator:(String? val)=>val==null||val.isEmpty?"tie# required":null,

                            controller: _entryFormController.tieController,
            
                        hintText: "Tie#",
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Expanded(
                          child: TxtField(
                            validator:(String? val)=>val==null||val.isEmpty?"weight is required":null,

                            controller: _entryFormController.weightController,
            
                        hintText: "Weight...",
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: DropDownField(
                            validator:(String? val)=>val==null||val.isEmpty?"select status":null,
                            
                              onChanged: (status) {
                                _entryFormController.status=status;
                           
                              },
                              items: _entryFormController.statusValuesList,
                              hintText: "Status"))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Expanded(
                          child: DropDownField(
                            validator:(String? val)=>val==null||val.isEmpty?"select part size":null,

                              onChanged: (partSize) {
                                                       _entryFormController.partSize=partSize;
            
                              },
                              items: _entryFormController.partSizesList,
                              hintText: "Part size")),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: DropDownField(
                            validator:(String? val)=>val==null||val.isEmpty?"select part size":null,

                              onChanged: (inspection) {
                                                        _entryFormController.inspection=inspection;
            
                              },
                              items: _entryFormController.inspectionList,
                              hintText: "Inspection"))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TxtField(
                            validator:(String? val)=>val==null||val.isEmpty?"enter temprature":null,

                    controller: _entryFormController.tempratureController,
                    hintText: "Temprature",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Flexible(
                        child: SizedBox(
                            width: Get.width * 0.8,
                            child: MyButton(
                              onTap: () async {
if(_entryFormController.formKey.currentState!.validate())
{

  _entryFormController.formKey.currentState?.save();
  
await  _entryFormController.addEntryToDatabase();
Get.snackbar("Success", "Entry Addes Successfully");
}
else{

}
                              },
                              
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
                              onTap: (){

                              },
                              buttonText: "RESET",
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
