import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/views/homeView/home_controller.dart';
import 'package:project/widgets/button_widget.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hesap Makinesi'.toUpperCase()),
        centerTitle: true,
        backgroundColor: const Color(0xFFee403c),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment(1.0, 1.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 12, 8),
              child: Obx(
                () => Text(
                  controller.transactionHistory.value,
                  style: GoogleFonts.rubik(fontSize: 30, color: Colors.black54),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment(1.0, 1.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 12, 8),
              child: Obx(
                () => Text(
                  controller.showText.value,
                  style: GoogleFonts.rubik(fontSize: 40, color: Colors.black),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonWidget(
                  text: 'AC',
                  backgroundColor: Colors.deepOrange,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick),
              buttonWidget(
                  text: 'C',
                  backgroundColor: Colors.deepOrange,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick),
              buttonWidget(
                  text: 'BACK',
                  backgroundColor: Colors.yellow,
                  textColor: Colors.black,
                  textSize: 18,
                  click: controller.btnClick),
              buttonWidget(
                  text: '/',
                  backgroundColor: Colors.yellow,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonWidget(
                  text: '9',
                  backgroundColor: Colors.deepOrange,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick),
              buttonWidget(
                  text: '8',
                  backgroundColor: Colors.deepOrange,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick),
              buttonWidget(
                  text: '7',
                  backgroundColor: Colors.deepOrange,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick),
              buttonWidget(
                  text: 'X',
                  backgroundColor: Colors.yellow,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonWidget(
                  text: '6',
                  backgroundColor: Colors.deepOrange,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick),
              buttonWidget(
                  text: '5',
                  backgroundColor: Colors.deepOrange,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick),
              buttonWidget(
                  text: '4',
                  backgroundColor: Colors.deepOrange,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick),
              buttonWidget(
                  text: '-',
                  backgroundColor: Colors.yellow,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonWidget(
                  text: '3',
                  backgroundColor: Colors.deepOrange,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick),
              buttonWidget(
                  text: '2',
                  backgroundColor: Colors.deepOrange,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick),
              buttonWidget(
                  text: '1',
                  backgroundColor: Colors.deepOrange,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick),
              buttonWidget(
                  text: '+',
                  backgroundColor: Colors.yellow,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buttonWidget(
                  text: '+/-',
                  backgroundColor: Colors.deepOrange,
                  textColor: Colors.black,
                  textSize: 20,
                  click: controller.btnClick),
              buttonWidget(
                  text: '0',
                  backgroundColor: Colors.deepOrange,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick),
              buttonWidget(
                  text: '00',
                  backgroundColor: Colors.deepOrange,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick),
              buttonWidget(
                  text: '=',
                  backgroundColor: Colors.yellow,
                  textColor: Colors.black,
                  textSize: 30,
                  click: controller.btnClick)
            ],
          )
        ],
      ),
    );
  }
}
