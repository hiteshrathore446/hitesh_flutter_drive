import 'package:flutter/material.dart';

class Cash_Report extends StatefulWidget {
  const Cash_Report({super.key});

  @override
  State<Cash_Report> createState() => _Cash_ReportState();
}

class _Cash_ReportState extends State<Cash_Report> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Color(0xff00008b),
              title: Text(
                "CashBook Report",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            body: Column(children: [
              Container(
                height: 130,
                decoration: BoxDecoration(color: Color(0xff00008b)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2.2,
                                decoration: BoxDecoration(color: Colors.white),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.calendar_month),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        "START DATE",
                                        style: TextStyle(
                                            color: Color(0xff00008b),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                _selectDate(context);
                              },
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Divider(
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2.2,
                                decoration: BoxDecoration(color: Colors.white),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.calendar_month),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        "END DATE",
                                        style: TextStyle(
                                            color: Color(0xff00008b),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                _selectDate(context);
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              prefixIcon: Icon(
                                                Icons.search,
                                                color: Color(0xff00008b),
                                              ),
                                              hintText:
                                                  "Select report duration"))
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Divider(
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  child: Container(
                                    height: 50,
                                    width:
                                        MediaQuery.of(context).size.width / 2.5,
                                    decoration:
                                        BoxDecoration(color: Color(0xffe3f0ff)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Text(
                                            "THIS MONTH",
                                            style: TextStyle(
                                                color: Color(0xff00008b),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: Color(0xff00008b),
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    _displyBtmSheet(context);
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(children: [
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "DATE",
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "DALY CASH BALANCE",
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "CASH IN HAND",
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                )
              ])
            ])));
  }
}

Future _displyBtmSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: ((context) => Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          "Select report duration",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )));
}
