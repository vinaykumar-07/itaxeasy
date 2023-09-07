import 'package:flutter/material.dart';
import 'package:itaxeasy/widget/big_text.dart';
import 'package:itaxeasy/widget/small_text.dart';

class Deductee extends StatefulWidget {
  const Deductee({super.key});

  @override
  _DeducteeState createState() => _DeducteeState();
}

class _DeducteeState extends State<Deductee> {
  String selectedOption = '';
  TextEditingController _creditDateController = TextEditingController();
  late DateTime _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100, left: 50, right: 50),
        color: Color.fromARGB(255, 219, 219, 214),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SmallText(
              text: 'Deductee type',
              size: 20,
            ),
            SizedBox(height: 10), // Add some spacing between text and input

            // Input container with hint text and shadow
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width:
                  MediaQuery.of(context).size.width, // Adjust width as needed
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 90, 83, 83)
                        .withOpacity(0.5), // Shadow color
                    spreadRadius: 3, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: Offset(0, 3), // Offset in x and y direction
                  ),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: ' Type',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SmallText(
              text: 'Is Pan Available',
              size: 20,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Radio(
                  value: 'Yes',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      // selectedOption = value;
                    });
                  },
                ),
                Text('Yes'),
                Radio(
                  value: 'No',
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      // selectedOption = value;
                    });
                  },
                ),
                Text('No'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SmallText(
              text: 'Residential Status',
              size: 20,
            ),
            SizedBox(height: 10), // Add some spacing between text and input

            // Input container with hint text and shadow
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width:
                  MediaQuery.of(context).size.width, // Adjust width as needed
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 137, 132, 132)
                        .withOpacity(0.5), // Shadow color
                    spreadRadius: 3, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: Offset(0, 3), // Offset in x and y direction
                  ),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Status',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SmallText(
              text: 'Section',
              size: 20,
            ),
            SizedBox(height: 10), // Add some spacing between text and input

            // Input container with hint text and shadow
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width:
                  MediaQuery.of(context).size.width, // Adjust width as needed
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 137, 130, 130)
                        .withOpacity(0.5), // Shadow color
                    spreadRadius: 3, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: Offset(0, 3), // Offset in x and y direction
                  ),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Section',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SmallText(
              text: 'Credit Amount',
              size: 20,
            ),
            SizedBox(height: 10), // Add some spacing between text and input

            // Input container with hint text and shadow
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width:
                  MediaQuery.of(context).size.width, // Adjust width as needed
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 122, 116, 116)
                        .withOpacity(0.5), // Shadow color
                    spreadRadius: 3, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: Offset(0, 3), // Offset in x and y direction
                  ),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Amount',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SmallText(
              text: 'Credit Date',
              size: 20,
            ),
            SizedBox(height: 10), // Add some spacing between text and input

            // Input container with hint text, calendar icon, and date picker
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width:
                  MediaQuery.of(context).size.width, // Adjust width as needed
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1), // Shadow color
                    spreadRadius: 3, // Spread radius
                    blurRadius: 5, // Blur radius
                    offset: Offset(0, 3), // Offset in x and y direction
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _creditDateController,
                      decoration: InputDecoration(
                        hintText: 'Credit Date',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () {
                      _selectDate(context);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 25, 25, 205),
              padding: EdgeInsets.only(left: 110, top: 5),
              child: BigText(
                text: 'Submit',
                color: Colors.white,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _creditDateController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }
}
