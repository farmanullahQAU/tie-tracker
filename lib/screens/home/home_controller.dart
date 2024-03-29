import 'package:get/get.dart';
import 'package:tie_tracker/components/home_card.dart';
import 'package:tie_tracker/screens/entry_form/entry_form_controller.dart';
import 'package:tie_tracker/screens/entry_form/entry_form_view.dart';

import '../charts/charts_view.dart';
import '../listview/entry_listview.dart';

class HomeController extends GetxController{


  final List<HomeCard> _homeCards=[

HomeCard(title: "Scan", imageUrl: 'images/scan_icon.png', onTap: (){}),

HomeCard(title: "List View", imageUrl: 'images/list_icon.png', onTap: (){
Get.to(()=>EntryListView());

}),
HomeCard(title: "Entry Form", imageUrl: 'images/entry_form_icon.png', onTap: (){

Get.to(()=>InventryForm(),binding: BindingsBuilder.put(()=>InventryFormController()));
  
}),
HomeCard(title: "Chart", imageUrl: 'images/chart_icon.png', onTap: (){

Get.to(()=>PieChartSample2());

})



  ];

  List<HomeCard> get homeCards=>_homeCards;

}