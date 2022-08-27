// ignore_for_file: avoid_print, use_key_in_widget_constructors, non_constant_identifier_names, avoid_function_literals_in_foreach_calls, avoid_types_as_parameter_names
import 'package:flutter/material.dart';
import 'package:migraine_help_v1/Models/migraine.dart';
import 'package:provider/provider.dart';

class MigraineList extends StatefulWidget {
  @override
  _MigraineListState createState() => _MigraineListState();
}

class _MigraineListState extends State<MigraineList> {
  @override
  Widget build(BuildContext context) {
    final migraines = Provider.of<List<Migraine>>(context);
    migraines.forEach((Migraine) {
      print(Migraine.name);
      print(Migraine.sugars);
    });
    /*final migraines = Provider.of<QuerySnapshot?>(context);
    //print(brews.documents);
    for (var doc in migraines!.docs) {
      print(doc.data());
    }*/
    //print(brews.documents);
    return Container();
  }
}
