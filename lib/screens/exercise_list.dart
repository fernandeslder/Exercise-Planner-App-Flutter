import 'package:flutter/material.dart';

class ExerciseList extends StatefulWidget {
  @override
  _ExerciseListState createState() => _ExerciseListState();
}

class _ExerciseListState extends State<ExerciseList> {

  int count = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercise Planner"),
      ),

      body: getExerciseListView(),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          debugPrint("HelloActionButton");
        },
      ),
    );
  }

  ListView getExerciseListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subtitle1;
    return ListView.builder(
        itemCount: count,
      itemBuilder: (BuildContext context, int position){
          return Card(
            color: Colors.white,
            child : ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.fitness_center),
              ),

              title: Text("Dummy Title", style: titleStyle),
              subtitle: Text("Dummy Date"),
              trailing: Icon(Icons.check, color: Colors.black,),
            onTap: () {
                debugPrint("HelloExer");
            },
            )
          );
      },
    );
  }
}
