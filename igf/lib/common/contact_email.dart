import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final String hintTextName = 'Enter your name..';
  final String hitnEmail = 'Enter your email..';
  final String hintSubject = 'Enter subject..';
  final String hintMessage = 'Enter message..';
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Align(
        child: Container(
          width:
              MediaQuery.of(context).size.width < 600 ? double.infinity : 600,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 141, 161, 196).withOpacity(0.5),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 25,
                    width: 2,
                    color: Color.fromARGB(255, 189, 165, 28),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "CONTACT US",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              customInputField(hintTextName, nameController),
              const SizedBox(
                height: 20,
              ),
              customInputField(hitnEmail, emailController),
              const SizedBox(
                height: 20,
              ),
              customInputField(hintSubject, subjectController),
              const SizedBox(
                height: 20,
              ),
              customInputField(hintMessage, messageController),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (() {
                      sendEmail(
                        name: nameController.text.trim(),
                        email: emailController.text.trim(),
                        subject: subjectController.text.trim(),
                        message: messageController.text.trim(),
                      );
                      nameController.clear();
                      emailController.clear();
                      subjectController.clear();
                      messageController.clear();
                    }),
                    child: Container(
                      margin: const EdgeInsets.only(right: 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      color: Colors.white,
                      child: const Text(
                        "Send Enquiry",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField customInputField(hintText, controller) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(color: Colors.white),
      keyboardType: TextInputType.multiline,
      maxLines: null,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 20.0, color: Colors.white),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(
            color: Colors.black26,
            width: 2,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
      ),
    );
  }

  Future sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    const serviceId = 'service_rl8u57p';
    const templateId = 'template_8htb0gk';
    const userId = '9mYOIXW1LT9nJOJjz';
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    Map<String, String> headers = {
      'origin': 'http://localhost',
      'Content-Type': 'application/json'
    };
    final msg = jsonEncode({
      'service_id': serviceId,
      'template_id': templateId,
      'user_id': userId,
      'template_params': {
        'user_name': name,
        'user_email': email,
        'user_subject': subject,
        'user_message': message,
      }
    });
    final response = await http.post(
      url,
      headers: headers,
      body: msg,
    );
    print(response);
  }
}
