import 'package:flutter/material.dart';

import '../../Utils/colors.dart';
import 'add_expense_screen.dart';
import '../Widgets/common_widgets.dart';

class ListofIncomeScreen extends StatefulWidget {
  static String routeName = '/listofIncomeScreen';

  const ListofIncomeScreen({Key? key}) : super(key: key);

  @override
  State<ListofIncomeScreen> createState() => _ListofIncomeScreenState();
}

class _ListofIncomeScreenState extends State<ListofIncomeScreen> {


  @override
  Widget build(BuildContext context) {
    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;


    return Scaffold(
      backgroundColor: primaryGrey,
      appBar: AppBar(
        titleSpacing: 15,
        title: Text(
          "Income List",
          style: TextStyle(color: Colors.white, fontSize: main_Height * 0.022),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: primaryPurple,
        elevation: 0,
        // centerTitle: true,
      ),
      bottomSheet: Container(
        height: main_Height * 0.1,
        width: main_Width * 1,
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: main_Width * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: main_Height * 0.052,
                  decoration: BoxDecoration(
                      // color: Colors.green,
                      border: Border.all(color: primaryPurple, width: 1),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "ADD INCOME",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        letterSpacing: 1,
                        color: primaryPurple,
                        fontWeight: FontWeight.w600,
                        fontSize: main_Height * 0.015,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: main_Width * 0.028,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(AddExpenseScreen.routeName);
                  },
                  child: Container(
                    height: main_Height * 0.052,
                    decoration: BoxDecoration(
                        color: primaryPurple,
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "ADD EXPENSE",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          fontSize: main_Height * 0.015,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          bottom: main_Height * 0.1,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///
              /// Heading
              ///

              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: main_Height * 0.008,
                    horizontal: main_Width * 0.03),
                child: Row(
                  children: [
                    Text(
                      "Last Added",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: main_Height * 0.018,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),

              ///
              ///List
              ///

              Container(
                height: main_Height * 0.735,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return CommonWidgets.CommonIncomeListView(context);
                    }),
              ),
            ],
          ),
        ),
      ),
    );


  }


  Widget mainViewAllCourseCatCourse(){

    double main_Width = MediaQuery.of(context).size.width;
    double main_Height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryGrey,
      appBar: AppBar(
        titleSpacing: 15,
        title: Text(
          "Income List",
          style: TextStyle(color: Colors.white, fontSize: main_Height * 0.022),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: primaryPurple,
        elevation: 0,
        // centerTitle: true,
      ),
      bottomSheet: Container(
        height: main_Height * 0.1,
        width: main_Width * 1,
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: main_Width * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: main_Height * 0.052,
                  decoration: BoxDecoration(
                    // color: Colors.green,
                      border: Border.all(color: primaryPurple, width: 1),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "ADD INCOME",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        letterSpacing: 1,
                        color: primaryPurple,
                        fontWeight: FontWeight.w600,
                        fontSize: main_Height * 0.015,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: main_Width * 0.028,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(AddExpenseScreen.routeName);
                  },
                  child: Container(
                    height: main_Height * 0.052,
                    decoration: BoxDecoration(
                        color: primaryPurple,
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "ADD EXPENSE",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          fontSize: main_Height * 0.015,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          bottom: main_Height * 0.1,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///
              /// Heading
              ///

              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: main_Height * 0.008,
                    horizontal: main_Width * 0.03),
                child: Row(
                  children: [
                    Text(
                      "Last Added",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: main_Height * 0.018,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),

              ///
              ///List
              ///

              Container(
                height: main_Height * 0.735,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return CommonWidgets.CommonIncomeListView(context);
                    }),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
