import 'package:flutter/material.dart';

class RoundedButtomAppBar extends StatefulWidget {
  const RoundedButtomAppBar({super.key});

  @override
  State<RoundedButtomAppBar> createState() => _RoundedButtomAppBarState();
}

class _RoundedButtomAppBarState extends State<RoundedButtomAppBar> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return  Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              AppBar(
                elevation: 0,
                toolbarHeight: 110,
                title: const Text("Rounded bottom app bar"),
                shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                )
                ),
              ),
              Positioned(
                bottom: -20,
                right: 0,
                left: 0,
                child: Container(
                  height: 55,
                  width: width,
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30)
                  ),
                )),
                
            ],
          ),
          ),
          body:  const SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Text('Body')
              ],
            ),
          ),
    );
  }
}
