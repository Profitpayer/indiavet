import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? createpdfanddownload(String? cpdf) {
  // create function that create pdf file and downlaod pdf on click button
  // Function to create a PDF file and download it on button click
  String? createpdfanddownload(String? cpdf) {
    // Add your code here to create a PDF file
    // For example, you can use a package like pdf or pdf_flutter to create a PDF file

    // Once the PDF file is created, you can download it by providing a download link
    // For example, you can use a package like url_launcher to open the download link

    // Return the download link for the created PDF file
    return 'https://example.com/download/pdf';
  }

  // Call the function with the provided input
  return createpdfanddownload(cpdf);
}

String? downloadpdf() {
  // dowload pdf with auto genret path in firebase
  // Add your code here to generate a PDF file and upload it to Firebase Storage
  // For example, you can use a package like pdf or pdf_flutter to create a PDF file

  // Once the PDF file is generated, you can upload it to Firebase Storage
  // For example, you can use the Firebase Storage package to upload the PDF file

  // Return the download link for the uploaded PDF file
  return 'https://example.com/uploaded/pdf';
}

String? lowtouper(String? uper) {
  // convert  String lower to upcase
  // Check if the input string is not null
  if (uper != null) {
    // Convert the input string to uppercase
    String upperCaseString = uper.toUpperCase();
    // Return the uppercase string
    return upperCaseString;
  } else {
    // Return null if the input string is null
    return null;
  }
}

String? notification(String? title) {
  // create functione for Sent to Notification to All User
  // Check if the title is not null
  if (title != null) {
    // Add your code here to send a notification to all users
    // For example, you can use a package like firebase_messaging to send notifications

    // Return a success message if the notification is sent successfully
    return 'Notification sent to all users: $title';
  } else {
    // Return null if the title is null
    return null;
  }
}
