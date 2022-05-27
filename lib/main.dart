import 'package:flutter/material.dart';
//import
void main(List<String> args) {
  runApp(const HelloApp());
}

class HelloApp extends StatefulWidget {
  const HelloApp({Key? key}) : super(key: key);

  @override
  State<HelloApp> createState() => _HelloAppState();
}

class _HelloAppState extends State<HelloApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          height: 50,
          color: Colors.amber,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
          hoverColor: Colors.red,
          backgroundColor: Colors.green,
          // clipBehavior: Clip.hardEdge,
          // focusElevation: 20,
        ),
        appBar: AppBar(
          title: const Text('Hello App'),
          actions: [
            const Icon(Icons.search),
            IconButton(onPressed: () {}, icon: const Icon(Icons.call))
          ],
          backgroundColor: Colors.amberAccent,
        ),
        body: Column(
          children: [
            Wrap(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Hello',
                      style: TextStyle(fontSize: 50),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green[100],
                      padding: const EdgeInsets.all(20),
                )),
                Container(
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(onPressed: (){}, 
                  child: const Icon(Icons.call),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    padding: const EdgeInsets.all(20),

                  ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: OutlinedButton(onPressed: (){}, 
                  child: const Icon(Icons.call),
                  style: ElevatedButton.styleFrom(
                    // primary: Colors.red,
                    padding: const EdgeInsets.all(20),

                  ),
                  ),
                )
              ],
            ),
            Container(
              child: const RadioListTile(value: 1, groupValue: 1, onChanged: null,
                title: Text('Male'),
              ),
            ),
            Container(
              child: const RadioListTile(value: 0, groupValue: 1, onChanged: null,
                title: Text('Female'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
