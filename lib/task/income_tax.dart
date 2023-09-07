import 'package:flutter/material.dart';
import 'package:itaxeasy/task/deductee.dart';
import 'package:itaxeasy/widget/big_text.dart';
import 'package:itaxeasy/widget/small_text.dart';

class IncomeTaxCalculator extends StatelessWidget {
  const IncomeTaxCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 224, 220, 220),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
          // top: 20,
          ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, top: 20),
            color: Colors.blue,
            width: MediaQuery.of(context).size.width,
            height: 80,
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios),
                SizedBox(
                  width: 10,
                ),
                BigText(text: 'Income Tax Calculator'),
              ],
            ),
          ),
          Container(
            height: 300,
            color: const Color.fromARGB(255, 238, 237, 234),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Deductee()));
                      },
                      child: Container(
                        height: 120,
                        width: 150,
                        padding: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFD2CCCC)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.school_outlined),
                              SizedBox(
                                height: 10,
                              ),
                              SmallText(
                                text: 'tax deducted at source (TDS)',
                                size: 15,
                              )
                            ]),
                      ),
                    ),
                    // Second Container inside the red container
                    Container(
                      height: 120,
                      width: 150, padding: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFD2CCCC)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.school_outlined),
                            SizedBox(
                              height: 20,
                            ),
                            SmallText(
                              text: 'Domestic',
                              size: 15,
                            )
                          ]),
                      // Adjust color as needed
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // First Container inside the red container

                    Container(
                      height: 120,
                      width: 150,
                      padding: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFD2CCCC)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.school_outlined),
                            SizedBox(
                              height: 20,
                            ),
                            SmallText(
                              text: 'Individual',
                              size: 15,
                            )
                          ]), // Adjust color as needed
                    ),
                    // Second Container inside the red container
                    Container(
                      height: 120,
                      width: 150,
                      padding: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFD2CCCC)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.school_outlined),
                            SizedBox(
                              height: 20,
                            ),
                            SmallText(
                              text: 'Calculator',
                              size: 15,
                            )
                          ]), // Adjust color as needed
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
