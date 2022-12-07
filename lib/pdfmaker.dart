// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as prefix;
import 'package:intl/intl.dart';

const PdfColor lightGreen = PdfColor.fromInt(0xff049446);
const PdfColor  black = PdfColor.fromInt(000000);
const PdfColor  green = PdfColor.fromInt(0xffD2f8d2);
const PdfColor  white = PdfColor.fromInt(0Xffffffff);
const PdfColor  grey = PdfColor.fromInt(0Xffffffff);

Future<Uint8List> makePdf(BuildContext context1, invoice,context,number,name) async {
  final pdf = prefix.Document();
  pdf.addPage(
    prefix.Page(
      build: (context) {
        return prefix.Padding(
          padding: const prefix.EdgeInsets.all(8),
          child: prefix.Column(
            children: [
              prefix.Text(
                'Fees Invoice',
                style: prefix.TextStyle(
                  fontSize: 15,
                  fontWeight: prefix.FontWeight.bold,
                  color: lightGreen
                ),
                textAlign: prefix.TextAlign.center,
              ),
              prefix.SizedBox(height: 10,),
              prefix.Container(
                padding:const prefix.EdgeInsets.all(8),
                height: 35,
                alignment: prefix.Alignment.center,
                decoration: const prefix.BoxDecoration(
                  color: green,
                ),
                child: prefix.Row(
                  mainAxisAlignment: prefix.MainAxisAlignment.spaceBetween,
                  children: [
                    prefix.Text(
                      'www.successoftinfotech.com',
                      style: const prefix.TextStyle(
                        fontSize: 10,
                        color: lightGreen
                      ),
                    ),
                    prefix.Text(
                      'info@successoftinfotech.com',
                      style: const prefix.TextStyle(
                        fontSize: 10,
                        color: lightGreen
                      ),
                    ),
                  ],
                )
              ),
              prefix.SizedBox(height: 10,),
                prefix.Text(
                  'Successoft Infotech',
                  style: prefix.TextStyle(
                    fontSize: 15,
                    fontWeight: prefix.FontWeight.bold,
                    color: lightGreen
                  ),
                  textAlign: prefix.TextAlign.center,
                ),
                prefix.SizedBox(height: 20,),
                prefix.Row(
                  mainAxisAlignment: prefix.MainAxisAlignment.spaceBetween,
                  children: [
                    prefix.Column(
                      crossAxisAlignment: prefix.CrossAxisAlignment.start,
                      children: [
                        prefix.RichText(
                          text: prefix.TextSpan(
                            text: 'Mobile Number: ',
                            style: prefix.TextStyle(
                              fontSize: 12,
                              fontWeight: prefix.FontWeight.bold
                            ),
                            children: [
                              prefix.TextSpan(text: number),
                            ],
                          ),
                        ),
                        prefix.SizedBox(height: 8,),
                        prefix.RichText(
                          text: prefix.TextSpan(
                            text: 'Person: ',
                            style: prefix.TextStyle(
                              fontSize: 12,
                              fontWeight: prefix.FontWeight.bold
                            ),
                            children: [
                              prefix.TextSpan(text: name),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                prefix.SizedBox(height: 10,),
                prefix.Divider(thickness: 1.5,),
                prefix.SizedBox(height: 10,),
                prefix.Row(
                  mainAxisAlignment: prefix.MainAxisAlignment.spaceBetween,
                  children: [
                    prefix.Container(
                      width: MediaQuery.of(context1).size.width/3.3,
                      alignment: prefix.Alignment.centerLeft,
                      child: prefix.Text(
                        'Description',
                        style: const prefix.TextStyle(
                          fontSize: 13,
                        ),
                        textAlign: prefix.TextAlign.center,
                      ),
                    ),
                    prefix.Container(
                      width: MediaQuery.of(context1).size.width/2.5,
                      alignment: prefix.Alignment.center,
                      child: prefix.Text(
                        'Fees',
                        style: const prefix.TextStyle(
                          fontSize: 13,
                        ),
                        textAlign: prefix.TextAlign.center,
                      ),
                    ),
                    prefix.Container(
                      width: MediaQuery.of(context1).size.width/4,
                      alignment: prefix.Alignment.centerRight,
                      child: prefix.Text(
                        'Total',
                        style: const prefix.TextStyle(
                          fontSize: 13,
                        ),
                        textAlign: prefix.TextAlign.center,
                      ),
                    ),
                  ],
                ),
                prefix.SizedBox(height: 10,),
                prefix.Divider(thickness: 1.5,),
                prefix.SizedBox(height: 10,),
                prefix.Row(
                  mainAxisAlignment: prefix.MainAxisAlignment.spaceBetween,
                  children: [
                    prefix.Container(
                      width: MediaQuery.of(context1).size.width/3.3,
                      alignment: prefix.Alignment.centerLeft,
                      child: prefix.Text(
                        'Tuition Fees',
                        style: const prefix.TextStyle(
                          fontSize: 12,
                        ),
                        textAlign: prefix.TextAlign.center,
                      ),
                    ),
                    prefix.Container(
                      width: MediaQuery.of(context1).size.width/2.5,
                      alignment: prefix.Alignment.center,
                      child: prefix.Text(
                        '10,000',
                        style: const prefix.TextStyle(
                          fontSize: 12,
                        ),
                        textAlign: prefix.TextAlign.center,
                      ),
                    ),
                    prefix.Container(
                      width: MediaQuery.of(context1).size.width/4,
                      alignment: prefix.Alignment.centerRight,
                      child: prefix.Text(
                        '5,000',
                        style: const prefix.TextStyle(
                          fontSize: 12,
                        ),
                        textAlign: prefix.TextAlign.center,
                      ),
                    ),
                  ],
                ),
                prefix.SizedBox(height: 10,),
                prefix.Divider(thickness: 0.3,color: black),
                prefix.SizedBox(height: 10,),
                prefix.Row(
                  mainAxisAlignment: prefix.MainAxisAlignment.spaceBetween,
                  children: [
                    prefix.Container(
                      width: MediaQuery.of(context1).size.width/3.3,
                      alignment: prefix.Alignment.centerLeft,
                      child: prefix.Text(
                        'Total Fees',
                        style: const prefix.TextStyle(
                          fontSize: 12,
                        ),
                        textAlign: prefix.TextAlign.center,
                      ),
                    ),
                    prefix.Container(
                      alignment: prefix.Alignment.center,
                      width: MediaQuery.of(context1).size.width/2.5,
                      child: prefix.Text(
                        '40,000',
                        style: const prefix.TextStyle(
                          fontSize: 12,
                        ),
                        textAlign: prefix.TextAlign.center,
                      ),
                    ),
                    prefix.Container(
                        alignment: prefix.Alignment.centerRight,
                        width: MediaQuery.of(context1).size.width/4,
                        child: prefix.Text(
                          "-",
                          style: const prefix.TextStyle(
                            fontSize: 12,
                          ),
                          textAlign: prefix.TextAlign.center,
                        ),
                      ),
                  ],
                ),
                prefix.SizedBox(height: 10,),
                prefix.Divider(thickness: 1.8,),
                prefix.SizedBox(height: 10,),
                prefix.Row(
                  mainAxisAlignment: prefix.MainAxisAlignment.spaceBetween,
                  children: [
                    prefix.Container(
                      width: MediaQuery.of(context1).size.width/3.3,
                      alignment: prefix.Alignment.centerLeft,
                      child: prefix.Text(
                        'Remain Fees',
                        style: const prefix.TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: prefix.TextAlign.center,
                      ),
                    ),
                    prefix.Container(
                      width: MediaQuery.of(context1).size.width/4,
                      alignment: prefix.Alignment.centerRight,
                      child: prefix.Text(
                        '30,000',
                        style: const prefix.TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: prefix.TextAlign.center,
                      ),
                    ),
                  ],
                ),
                prefix.SizedBox(height: 30,),
                prefix.Column(
                  crossAxisAlignment: prefix.CrossAxisAlignment.start,
                  children: [
                    prefix.Text(
                      'Terms & Conditions',
                      style: prefix.TextStyle(
                        fontSize: 15,
                        fontWeight: prefix.FontWeight.bold
                      ),
                      textAlign: prefix.TextAlign.center,
                    ),
                    prefix.SizedBox(height: 10,),
                    prefix.Padding(
                      padding: const prefix.EdgeInsets.only(left: 5),
                      child: prefix.Row(
                        crossAxisAlignment: prefix.CrossAxisAlignment.start,
                        children: [
                          prefix.Padding(
                            padding: const prefix.EdgeInsets.only(top: 5),
                            child: prefix.Container(
                              height: 5,
                              width: 5,
                              decoration: prefix.BoxDecoration(
                                color: black,
                                borderRadius: prefix.BorderRadius.circular(2)
                              )
                            )
                          ),
                          prefix.SizedBox(width: 5,),
                          prefix.SizedBox(
                            width: MediaQuery.of(context1).size.width,
                            child: prefix.Text(
                              "After the completion of the scheduled demo lectures decided in the classrooms, the fee will have to be paid according to the number of days the student has attended the classrooms.",
                              maxLines: 2,
                              style: const prefix.TextStyle(
                                fontSize: 10,
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                    prefix.SizedBox(height: 10,),
                    prefix.Padding(
                      padding: const prefix.EdgeInsets.only(left: 5),
                      child: prefix.Row(
                        crossAxisAlignment: prefix.CrossAxisAlignment.start,
                        children: [
                          prefix.Padding(
                            padding: const prefix.EdgeInsets.only(top: 5),
                            child: prefix.Container(
                              height: 5,
                              width: 5,
                              decoration: prefix.BoxDecoration(
                                color: black,
                                borderRadius: prefix.BorderRadius.circular(2)
                              )
                            )
                          ),
                          prefix.SizedBox(width: 5,),
                          prefix.SizedBox(
                            width: MediaQuery.of(context1).size.width,
                            child: prefix.Text(
                              "Under no circumstances will the fee be refunded to the student after paying the fee.",
                              maxLines: 2,
                              style: const prefix.TextStyle(
                                fontSize: 10,
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                    prefix.SizedBox(height: 10,),
                    prefix.Padding(
                      padding: const prefix.EdgeInsets.only(left: 5),
                      child: prefix.Row(
                        crossAxisAlignment: prefix.CrossAxisAlignment.start,
                        children: [
                          prefix.Padding(
                            padding: const prefix.EdgeInsets.only(top: 5),
                            child: prefix.Container(
                              height: 5,
                              width: 5,
                              decoration: prefix.BoxDecoration(
                                color: black,
                                borderRadius: prefix.BorderRadius.circular(2)
                              )
                            )
                          ),
                          prefix.SizedBox(width: 5,),
                          prefix.SizedBox(
                            width: MediaQuery.of(context1).size.width,
                            child: prefix.Text(
                              "Anyone can join, after 10 days of demo lecture, they have to pay 2500 rupees and confirm the admission.",
                              maxLines: 2,
                              style: const prefix.TextStyle(
                                fontSize: 10,
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          
        );
      },
    ),
  );
  return pdf.save();
}



