import 'package:demo/const/space_helper.dart';
import 'package:demo/view/home/widget/home_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/home_controller.dart';

class Hompage extends StatelessWidget {
  Hompage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Consumer<HomeController>(builder: (context, controller, widget) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                width: double.infinity,
                // height: 300,
                child: SafeArea(
                  child: Column(children: [
                    vSpaceSmall,
                    Row(children: [
                      Spacer(),
                      Text("Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: width / 2.5,
                      ),
                      Icon(Icons.close, color: Colors.white),
                      hSpaceMin
                    ]),
                    vSpaceMedium,
                    Container(
                      width: width / 2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            controller.swithOne
                                ? Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        controller.ontapOne();
                                      },
                                      child: CircleAvatar(
                                        radius: 20,
                                        child: Text('6'),
                                      ),
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        controller.ontapOne();
                                      },
                                      child: CircleAvatar(
                                        radius: 21,
                                        backgroundColor: Colors.blue,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 20,
                                          child: Text('6'),
                                        ),
                                      ),
                                    ),
                                  ),
                            controller.swithTwo
                                ? Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        controller.ontapOne();
                                      },
                                      child: CircleAvatar(
                                        radius: 20,
                                        child: Text('6'),
                                      ),
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        controller.ontapTwo();
                                      },
                                      child: CircleAvatar(
                                        radius: 21,
                                        backgroundColor: Colors.blue,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 20,
                                          child: Text('7'),
                                        ),
                                      ),
                                    ),
                                  ),
                          ]),
                    ),
                    vSpaceRegular,
                  ]),
                ),
              ),
              controller.swithOne ? HomeContainerWidgetOne() : SizedBox(),
              controller.swithTwo ? HomeContainerWidgetTwo() : SizedBox(),
            ],
          ),
        );
      }),
    );
  }
}
