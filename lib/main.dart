import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController TEXTOController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 94, 94, 94),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Gerador de QR Code",
                style: TextStyle(fontSize: 20),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 400,
                      child: TextField(
                        controller: TEXTOController,
                        decoration: InputDecoration(
                            hintText: 'Cole o seu link aqui',
                            focusColor: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 65, 60, 60)),
                        onPressed: () {
                          setState(() {
                            String text = TEXTOController.text;
                            
                          }
                          );
                          
                        },
                        child: Icon(Icons.add))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1), color: Colors.white),
                child: QrImage(
                  data: TEXTOController.text,
                  version: QrVersions.auto,
                  size: 250.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
