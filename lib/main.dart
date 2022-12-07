import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pdf_view/pdf.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("PDF View",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => Datapdf(number: '98985 98985', name: 'User', invoice: 0,)
                )
              );
            },
            contentPadding: const EdgeInsets.only(top: 0, left: 0, right: 10, bottom: 0),
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(child: Icon(Icons.attach_money_rounded)) 
            ),
            title: Text(
              DateFormat('dd MMM, yyyy').format(DateTime.now()),
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 12,
              ),
            ),
            subtitle: const Text(
              '10,000',
              style: TextStyle(
                fontSize: 14,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const Icon(Icons.picture_as_pdf_rounded,color: Colors.green,),
          ),
          const Divider(),
          const SizedBox(height: 25,),
        ],
      )
    );
  }
}
