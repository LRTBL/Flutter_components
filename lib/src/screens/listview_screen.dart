import 'dart:async';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  ScrollController _scrollController = new ScrollController();
  List<int> _listIntegers = List<int>();
  int _finalItem = 0;
  bool _isLoadgin = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addTenImages();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // addTenImages();
        fetchDate();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: Stack(
        children: <Widget>[
          _createList(),
          _createLoading(),
        ],
      ),
    );
  }

  Widget _createList() {
    return RefreshIndicator(
      onRefresh: obtainPageOne,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listIntegers.length,
        itemBuilder: (BuildContext context, int key) {
          final index = _listIntegers[key];
          return FadeInImage(
            height: 300,
            fit: BoxFit.fitHeight,
            placeholder: AssetImage("assets/jar-loading.gif"),
            image: NetworkImage("https://picsum.photos/500/300?random=$index"),
          );
        },
      ),
    );
  }

  Future<Null> obtainPageOne() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _listIntegers.clear();
      _finalItem++;
      addTenImages();
    });
    return Future.delayed(duration);
  }

  Widget _createLoading() {
    if (_isLoadgin) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 40.0,
                width: 40.0,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(const Radius.circular(30))),
                child: CircularProgressIndicator(
                  strokeWidth: 3.0,
                ),
              )
            ],
          ),
          SizedBox(height: 15.0)
        ],
      );
    }
    return Container();
  }

  Future<Null> fetchDate() async {
    setState(() {
      _isLoadgin = true;
    });
    final duration = new Duration(seconds: 2);
    return new Timer(duration, requestHttp);
  }

  void requestHttp() {
    _isLoadgin = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastLinearToSlowEaseIn,
      duration: Duration(microseconds: 250),
    );
    addTenImages();
  }

  void addTenImages() {
    for (var i = 0; i < 10; i++) {
      _listIntegers.add(_finalItem++);
    }
    setState(() {});
  }
}
