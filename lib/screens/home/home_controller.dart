import 'package:get/get.dart';
import 'package:tie_tracker/components/home_card.dart';
import 'package:tie_tracker/screens/entry_form/entry_form_view.dart';

import '../charts/charts_view.dart';

class HomeController extends GetxController{


  final List<HomeCard> _homeCards=[

HomeCard(title: "Scan", imageUrl: 'images/scan_icon.png', onTap: (){}),

HomeCard(title: "List View", imageUrl: 'images/list_icon.png', onTap: (){}),
HomeCard(title: "Entry Form", imageUrl: 'images/entry_form_icon.png', onTap: (){

Get.to(()=>InventryForm());
  
}),
HomeCard(title: "Chart", imageUrl: 'images/chart_icon.png', onTap: (){

Get.to(()=>PieChartSample2());

})



  ];

  List<HomeCard> get homeCards=>_homeCards;

}