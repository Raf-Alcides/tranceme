import 'package:flutter/material.dart';
import 'package:tranceme/app/config/custom_colors.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            'TranceMe',
            style: TextStyle(
              color: CustomColors.primaryColor,
              fontSize: 19,
            ),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 30,
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: CustomColors.primaryColor,
                  thickness: 2,
                ),
              ),
              Image.asset('assets/images/logo 2.png'),
              SizedBox(
                width: 30,
                child: Divider(
                  color: CustomColors.primaryColor,
                  thickness: 2,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Pesquise o que quiser...',
                  suffixIcon: Icon(
                    Icons.search,
                    color: CustomColors.primaryColor,
                    size: 22,
                  ),
                  hintStyle:  TextStyle(
                    fontSize: 16,
                    color: CustomColors.primaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                    borderSide: BorderSide(color: CustomColors.primaryColor, )
                  )),
            ),
          )
        ],
      )),
    );
  }
}
