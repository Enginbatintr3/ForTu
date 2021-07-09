import 'package:flutter/material.dart';
import 'package:flutter_application_3/server/smtp.dart';
import 'package:flutter_application_3/widgets/field.dart';

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

TextEditingController title = TextEditingController();
TextEditingController messagest = TextEditingController();

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: OutlinedButton(
          onPressed: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Fortune Teller App",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                  bottom: 160, top: 80, right: 80, left: 80),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff000000).withOpacity(.5),
                    offset: const Offset(10, 15),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Support",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  myMethod(title, "Enter Your Message Title"),
                  const Divider(
                    height: 50,
                    color: Colors.black,
                  ),
                  myMethod(messagest, "Enter Your Message"),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        border: Border.all(color: Colors.deepPurple)),
                    width: 200,
                    height: 40,
                    child: GestureDetector(
                      onTap: () => sendMessage(),
                      child: const Center(
                        child: Text(
                          "Support",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
