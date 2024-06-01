import 'package:flutter/material.dart';

class CurrencyConvertorPage extends StatelessWidget {
  const CurrencyConvertorPage({super.key});

  @override
  Widget build(Object context) {
    return const Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "hi",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.amber),
              decoration: InputDecoration(
                hintText: "Please enter the amount in USD",
                hintStyle: TextStyle(color: Colors.indigo),
                prefixIcon: Icon(Icons.monetization_on),
                filled: true,
                fillColor: Color.fromARGB(255, 144, 195, 237),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
                
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.amber),
              decoration: InputDecoration(
                hintText: "Please enter the amount in INR",
                hintStyle: TextStyle(color: Colors.indigo),
                prefixIcon: Icon(Icons.currency_rupee_outlined),
                filled: true,
                fillColor: Color.fromARGB(255, 144, 195, 237),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
