import 'package:final_project/utils/money_transfer_main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardInputController extends GetxController {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController =
      TextEditingController();
  TextEditingController amountTextEditingController = TextEditingController();
  TextEditingController dayTextEditingController = TextEditingController();
  TextEditingController monthTextEditingController = TextEditingController();
  TextEditingController yearTextEditingController = TextEditingController();

  clear() {
    nameTextEditingController.clear();
    _passwordTextEditingController.clear();
    amountTextEditingController.clear();
    dayTextEditingController.clear();
    monthTextEditingController.clear();
    yearTextEditingController.clear();
  }

  debugInput() {
    debugPrint("${nameTextEditingController.text}, "
        "${_passwordTextEditingController.text},"
        "${amountTextEditingController.text},"
        "${dayTextEditingController.text}, ${monthTextEditingController.text}, "
        "${yearTextEditingController.text}");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    amountTextEditingController.dispose();
    dayTextEditingController.dispose();
    monthTextEditingController.dispose();
    yearTextEditingController.dispose();
  }
}

class AddNewCardPage extends StatefulWidget {
  const AddNewCardPage({Key? key}) : super(key: key);

  @override
  _AddNewCardPage1State createState() => _AddNewCardPage1State();
}

class _AddNewCardPage1State extends State<AddNewCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MoneyTransferMainPage()));
                },
                child: const Icon(
                  Icons.keyboard_arrow_left_outlined,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Make a New Transaction",
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "ADDRESS OF RECIEVER",
                style: TextStyle(color: Colors.grey),
              ),
              GetBuilder(
                init: CardInputController(),
                builder: (CardInputController controller) {
                  return TextField(
                    controller: controller.nameTextEditingController,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        )),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        )),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                        )),
                  );
                },
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "PARSEPHRASE OF RECIEVER",
                style: TextStyle(color: Colors.grey),
              ),
              GetBuilder(
                init: CardInputController(),
                builder: (CardInputController controller) {
                  return TextField(
                    controller: controller._passwordTextEditingController,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      )),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      )),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "ENTER AMOUNT",
                style: TextStyle(color: Colors.grey),
              ),
              GetBuilder(
                init: CardInputController(),
                builder: (CardInputController controller) {
                  return TextField(
                    controller: controller.amountTextEditingController,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      )),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      )),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () {
                  Text('Sent');
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.green[500],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      "Transact",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
