import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tie_tracker/components/home_card.dart';
import 'package:tie_tracker/screens/home/home_controller.dart';
import 'package:tie_tracker/text_styles.dart';

class HomeView extends StatelessWidget {
  final _homeController=Get.find<HomeController>();
   HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        
        title: Text("HOME")),
      
      body: Padding(
        padding: const EdgeInsets.only(top:20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
        children: [
          Container(child:addCardsGrid(context),),
        ],
    ),
      ));
  }




  Widget addCardsGrid(BuildContext context) {
  return MediaQuery.removePadding(
    context: context,
    removeTop: true,
    child: GridView.builder(

      shrinkWrap: true,
      
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: _homeController.homeCards.length,
      itemBuilder: (BuildContext context, int index) {
        final card=_homeController.homeCards[index];
        return InkWell(

          onTap: card.onTap,
          child: Card(
        
        
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
        
        Text(card.title),
        SizedBox(height: 10,),
        
        Image.asset(card.imageUrl,width: 100,fit: BoxFit.cover,)
        
            ],)
          ),
        );
      }
    ),
  );
}
}