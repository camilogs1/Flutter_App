import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app_balcoder/ui/utils/custom_container.dart';
import 'package:flutter_first_app_balcoder/ui/utils/custom_text.dart';

class UserFormPage extends StatefulWidget {
  const UserFormPage({Key? key}) : super(key: key);

  @override
  _UserFormPageState createState() => _UserFormPageState();
}

class _UserFormPageState extends State<UserFormPage> {
  late TextEditingController _controllerName;
  late TextEditingController _controllerEmail;

  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    _controllerName = new TextEditingController(text: "");
    _controllerEmail = new TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    //Tamaño dinamico para desarrollo web
    double _height = MediaQuery.of(context).size.height * 0.05;
    double _width = MediaQuery.of(context).size.width * 0.65;

    return Scaffold(
      body: Container(
        color: Colors.white10,
        child: Center(
            child: isLoading
                //condicional terciario
                ? Column(
                    children: [
                      Spacer(),
                      Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: customText(
                              controller: _controllerName,
                              hintText: "User Name")),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, bottom: 36),
                          child: customText(
                              controller: _controllerEmail,
                              hintText: "User Email")),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLoading = true;
                          });
                          print("User Name:" + _controllerName.text);
                          print("User Email:" + _controllerEmail.text);

                          FirebaseFirestore.instance
                              .collection("userCollection")
                              .add({
                            "userName": _controllerName.text,
                            "userEmail": _controllerEmail.text
                          }).then((value) {
                            print("User Added");

                            _controllerName.text = "";
                            _controllerEmail.text = "";
                            setState(() {
                              isLoading = false;
                            });
                          });
                        },
                        child: CustomContainer(
                          sizeHeight: _height * 0.05,
                          sizeWidth: _width * 0.65,
                          tittleText: "Add User",
                          color: Colors.green,
                        ),
                      ),
                      Spacer(),
                    ],
                  )
                : CircularProgressIndicator()),
      ),
    );
  }
}
