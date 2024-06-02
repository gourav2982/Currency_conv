import 'package:flutter/material.dart';

class CurrencyConvertorPage extends StatefulWidget {
  const CurrencyConvertorPage({super.key});

  @override
  State<CurrencyConvertorPage> createState() {
    return _CurrencyConvertorPageState();
  }
}

class _CurrencyConvertorPageState extends State<CurrencyConvertorPage> {
 double rupee = 0;
 final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
   
    
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Currency Convertor"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Rs $rupee",
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: TextField(
                  controller: textEditingController,
                  keyboardType: TextInputType.number,
                  style:
                      const TextStyle(color: Color.fromARGB(255, 131, 7, 255)),
                  decoration: const InputDecoration(
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
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        rupee = double.parse((textEditingController.text)) * 80;
                      });
                    },
                    child: const Text(
                      "Convert",
                      style: TextStyle(fontSize: 20),
                    )),
              )
            ],
          ),
        ));
  }
}
