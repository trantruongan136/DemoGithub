import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const HelloApp());
}

class HelloApp extends StatefulWidget {
  const HelloApp({Key? key}) : super(key: key);

  @override
  State<HelloApp> createState() => _HelloAppState();
}

class _HelloAppState extends State<HelloApp> {
  int _convat = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {

        //   },
        //   child: const Icon(Icons.add),
        //   hoverColor: Colors.red,
        //   backgroundColor: Colors.green,
        //   // clipBehavior: Clip.hardEdge,
        //   // focusElevation: 20,
        // ),
        appBar: AppBar(
          title: const Text('Github App'),
          actions: [
            const Icon(Icons.search),
            IconButton(onPressed: () {}, icon: const Icon(Icons.call))
          ],
          backgroundColor: Colors.amberAccent,
        ),
        body: Column(
          children: [
            ListTile(
              title: const Text('Con voi'),
              leading:
                  Radio(value: 0, groupValue: _convat, onChanged: chonDongVat),
  //            hoverColor: Colors.red,
            ),
            ListTile(
              title: const Text('Con heo'),
              leading:
                  Radio(value: 1, groupValue: _convat, onChanged: chonDongVat),
            ),
            RadioListTile(
                value: 2, groupValue: _convat, onChanged: chonDongVat,
                title: const Text('Con su tu'),
                selected: true,
                selectedTileColor: Colors.amber,
                subtitle: const Text('Chua te son lam'),
                ),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Hello'), 
              duration: Duration(seconds: 5),)
            );
            }, child: Icon(Icons.shower))
          ],
        ),
      ),
    );
  }

  void chonDongVat(value) {
    setState(() {
      _convat = int.parse(value.toString());
      
    });
  }
}
