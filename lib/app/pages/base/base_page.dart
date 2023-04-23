import 'package:flutter/material.dart';
import 'package:tranceme/app/config/custom_colors.dart';
import 'package:tranceme/app/pages/home/home_tab.dart';

class BasePage extends StatefulWidget {

  const BasePage({ Key? key }) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {

  final pageController = PageController();
  int currentIndex = 1;

   @override
   Widget build(BuildContext context) {
       return Scaffold(
        backgroundColor: const Color(0xffe5e5e5),
           body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: [
              Container(color: Colors.yellow,),
              const HomeTab(),
              Container(color: Colors.red,),
            ],
           ),
           bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                currentIndex = index;
                pageController.jumpToPage(index);
              });
            },
            currentIndex: currentIndex,
            backgroundColor: Colors.white,
            selectedItemColor: CustomColors.primaryColor,
            unselectedItemColor: Colors.brown[200],
            
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Inicio',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Perfil',
              ),
            ]          ),
       );
  }
}