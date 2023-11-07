import 'package:flutter/material.dart';

void main() => runApp(const AddData());

class AddData extends StatelessWidget {
  const AddData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white, // Container background color
            borderRadius: BorderRadius.circular(8), // Container border radius
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Shadow color
                spreadRadius: 5, // Spread radius
                blurRadius: 7, // Blur radius
                offset: const Offset(0, 3), // Shadow position
              ),
            ],
          ),
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Input filed One
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a title',
                ),
              ),
              const SizedBox(height: 16), // Add some space between text fields
              // Input filed Two
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Description',
                ),
              ),
              const SizedBox(height: 16), // Add some space between text fields
              // for date selection
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 15), // Button padding
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(1), // Button border radius
                  ),
                  minimumSize: const Size(200, 50),
                ),
                onPressed: () {
                  _selectDate(context);
                },
                child: const Text('Select Date'),
              ),
              const SizedBox(height: 16), // Add some space between text fields
              // Button for submit
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 15), // Button padding
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(1), // Button border radius
                  ),
                  minimumSize: const Size(200, 50),
                ),
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      print('Selected date: $picked');
      // You can perform operations with the selected date here
    }
  }
}
