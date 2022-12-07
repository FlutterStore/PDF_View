// ignore_for_file: depend_on_referenced_packages, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pdf_view/pdfpageview.dart';

class Datapdf extends StatefulWidget {
  final invoice;
  String number,name;
  Datapdf({
    super.key,
    required this.number,
    required this.name,
    required this.invoice,
  });

  @override
  State<Datapdf> createState() => _DatapdfState();
}

class _DatapdfState extends State<Datapdf> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("My Fees Invoice")
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
           Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PdfPreviewPage(number: widget.number, name: widget.name,invoice: widget.invoice),
            ),
          );
        },
        child: const Icon(Icons.picture_as_pdf),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all()
            ),
            child: Column(
              children: [
                const Text(
                  'Fees Invoice',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 35,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'www.successoftinfotech.com',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        'info@successoftinfotech.com',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  )
                ),
                const SizedBox(height: 10,),
                const Text(
                  'Successoft Infotech',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Mobile Number: ',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                              ),
                              children: <TextSpan>[
                                TextSpan(text: widget.number),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8,),
                          RichText(
                            text: TextSpan(
                              text: 'Person Name: ',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                              ),
                              children: <TextSpan>[
                                TextSpan(text: widget.name),
                              ],
                            ),
                          ),  
                          const SizedBox(height: 8,),   
                          RichText(
                            text: const TextSpan(
                              text: 'Total Fees: ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                              ),
                              children: <TextSpan>[
                                TextSpan(text: '40,000'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8,),
                          RichText(
                            text: TextSpan(
                              text: 'Date: ',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                              ),
                              children: <TextSpan>[
                                TextSpan(text: DateFormat('dd MMM, yyyy').format(DateTime.now())),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                const Divider(thickness: 1.5,),
                const SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: MediaQuery.of(context).size.width/3.5,
                        child: const Text(
                          'Description',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width/2.5,
                        child: const Text(
                          'Fees',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        width: MediaQuery.of(context).size.width/4.6,
                        child: const Text(
                          'Total',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5,),
                const Divider(thickness: 1.5,),
                const SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: MediaQuery.of(context).size.width/3.5,
                        child: const Text(
                          'Tuition Fees',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width/2.8,
                        child: const Text(
                          '10,000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        width: MediaQuery.of(context).size.width/4,
                        child: const Text(
                          '10,000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5,),
                const Divider(thickness: 0.3,color: Colors.grey),
                const SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: MediaQuery.of(context).size.width/3.5,
                        child: const Text(
                          'Total Fees',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width/2.8,
                        child: const Text(
                          '40,000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        width: MediaQuery.of(context).size.width/4,
                        child: const Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                const Divider(thickness: 1.8,),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: MediaQuery.of(context).size.width/3.3,
                        child: const Text(
                          'Remain Fees',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        width: MediaQuery.of(context).size.width/4,
                        child: const Text(
                          '30,000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 5,right: 5),
                      child: Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/1.16,
                            child: const Text(
                              "After the completion of the scheduled demo lectures decided in the classrooms, the fee will have to be paid according to the number of days the student has attended the classrooms.",
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 9,
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/1.16,
                            child: const Text(
                              "Under no circumstances will the fee be refunded to the student after paying the fee.",
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 9,
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width/1.16,
                            child: const Text(
                              "Anyone can join, after 10 days of demo lecture, they have to pay 2500 rupees and confirm the admission.",
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 9,
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 5,),
                  ],
                ),
              ],
            ),
          )
        )
      )
    );
  }
}



   
