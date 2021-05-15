import 'package:animation_list/ui/list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

Items _items = new Items();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListAnimation(),
    );
  }
}

// ignore: must_be_immutable
class ListAnimation extends StatelessWidget {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo.shade300,
        appBar: AppBar(
          centerTitle: true,
          title: Text('List'),
        ),
        body: AnimationLimiter(
          child: ListView.builder(
              itemCount: _items.items.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.network(
                            'https://images.unsplash.com/photo-1583507171283-0d663f8416c8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80'),
                        decoration: BoxDecoration(
                          // gradient: LinearGradient(
                          //   colors: [Colors.blue.shade200, Colors.blue],
                          //   begin: Alignment.centerLeft,
                          //   end: Alignment.centerRight,
                          // ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 3000),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            height: 100,
                            child: Card(
                              margin: EdgeInsets.all(8.0),
                              child: ListTile(
                                trailing: Icon(
                                  Icons.restore_from_trash,
                                  color: Colors.red,
                                ),
                                title: Text(_items.items[index].tital),
                                leading: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(
                                    _items.items[index].imgUrl,
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ));
  }
}
