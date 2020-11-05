import 'package:flutter/material.dart';

class ExerciseDetail extends StatefulWidget {

  String appBarTitle;
  ExerciseDetail(this.appBarTitle);

  @override
  _ExerciseDetailState createState() => _ExerciseDetailState(this.appBarTitle);
}

class _ExerciseDetailState extends State<ExerciseDetail> {

  String appBarTitle;

  TextEditingController nameController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController setsController = TextEditingController();
  TextEditingController repsController = TextEditingController();

  _ExerciseDetailState(this.appBarTitle);

  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = Theme.of(context).textTheme.headline6;

    return WillPopScope(
      onWillPop: () {
        moveToLastScreen();
      },

      child: Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              moveToLastScreen();
            },
          ),
        ),

        body: Padding(
          padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
          child: ListView(
            children: <Widget>[

              //Exercise Name ====================
              Padding(
                padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                child: TextField(
                  controller: nameController,
                  style: textStyle,
                  onChanged: (value){
                    debugPrint("name TextField");
                  },
                  decoration: InputDecoration(
                    labelText: "Exercise Name",
                    labelStyle: textStyle,
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),

              //Weight ====================
              Padding(
                padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                child: TextField(
                  controller: weightController,
                  style: textStyle,
                  onChanged: (value){
                    debugPrint("weight TextField");
                  },
                  decoration: InputDecoration(
                    labelText: "Weight",
                    labelStyle: textStyle,
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),

              //Sets ====================
              Padding(
                padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                child: TextField(
                  controller: setsController,
                  style: textStyle,
                  onChanged: (value){
                    debugPrint("sets TextField");
                  },
                  decoration: InputDecoration(
                    labelText: "Sets",
                    labelStyle: textStyle,
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),

              //Reps ====================
              Padding(
                padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                child: TextField(
                  controller: repsController,
                  style: textStyle,
                  onChanged: (value){
                    debugPrint("reps TextField");
                  },
                  decoration: InputDecoration(
                    labelText: "Reps",
                    labelStyle: textStyle,
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),

              //Save and Delete ====================
              Padding(
                padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                child: Row(
                  children: <Widget>[

                    //Save
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text(
                          "Save",
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          setState(() {
                            debugPrint("SaveButton");
                          });
                        },
                      ),
                    ),

                    Container(width: 5,),

                    //Delete
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text(
                          "Delete",
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          setState(() {
                            debugPrint("DeleteButton");
                          });
                        },
                      ),
                    ),

                  ],
                )
              ),

            ],
          ),
        ),

      ),
    );
  }

  void moveToLastScreen() {
    Navigator.pop(context);
  }

}
