import 'package:demo/const/space_helper.dart';
import 'package:flutter/material.dart';

class HomeContainerWidgetOne extends StatelessWidget {
  const HomeContainerWidgetOne({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(children: [
        vSpaceMedium,
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Spacer(),
              Text("Just an demo "),
            ],
          ),
        ),
        vSpaceSmall,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text("data")),
                ),
                width: width / 2.2,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              // hSpaceMin,
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text("data")),
                ),
                width: width / 2.2,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              )
            ],
          ),
        )
      ]),
    );
  }
}

class HomeContainerWidgetTwo extends StatelessWidget {
  const HomeContainerWidgetTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(children: [
      vSpaceMedium,
      Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Spacer(),
            Text("Just an demo datasssssss"),
          ],
        ),
      ),
      ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    "data",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )),
                ),
                width: width / 1,
                height: 110,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            );
          })
    ]);
  }
}
