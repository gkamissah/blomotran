import 'package:final_project/reusable_widgets/reusable_widgets.dart';
import 'package:final_project/utils/money_transfer_main_page.dart';
import 'package:flutter/material.dart';

class TransactDetailScreen extends StatefulWidget {
  const TransactDetailScreen({Key? key}) : super(key: key);

  @override
  State<TransactDetailScreen> createState() => _TransactDetailScreenState();
}

class _TransactDetailScreenState extends State<TransactDetailScreen> {
  TextEditingController _walletAddressTextController = TextEditingController();
  TextEditingController _passPhraseTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          elevation: 0,
          title: const Text(
            'Transaction Details',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.black87,
          ),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              reusableTextField('Enter Wallet Address', Icons.person_outline,
                  false, _walletAddressTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField('Enter PassPhrase', Icons.person_outline, false,
                  _passPhraseTextController),
              const SizedBox(
                height: 20,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MoneyTransferMainPage()));
                        },
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      "Don't have transaction details?",
                      style: TextStyle(color: Colors.white70),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TransactDetailScreen()));
                      },
                      child: const Text(
                        ' Tap here',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ]),
            ]),
          )),
        ),
      ),
    );
  }
}
