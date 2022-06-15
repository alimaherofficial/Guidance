import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:guidance/styles/colors/colors.dart';

class AskqQestions extends StatelessWidget {
  const AskqQestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          Text(
            'Leave your question and you will find someone to answer you.',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[400],
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          TextFormField(
            // controller: firstnamecontroller,
            keyboardType: TextInputType.name,

            validator: (String? value) {
              if (value!.isEmpty) {
                return 'Please enter your first name';
              }
              return null;
            },

            decoration: InputDecoration(
              labelText: 'Enter your question',
              labelStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(
                Icons.question_answer_outlined,
                color: appColor,
              ),
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.send,
                  color: Colors.blue,
                ),
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: 'Check your internet connection',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
