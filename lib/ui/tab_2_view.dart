import 'package:flutter/material.dart';

class Tab2View extends StatefulWidget {
  @override
  State createState() => new Tab2ViewState();
}

class Tab2ViewState extends State<Tab2View> with AutomaticKeepAliveClientMixin<Tab2View> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            _buildItemView(context, DateTime.now().toString()),
            _buildItemView(context, DateTime.now().toString()),
            _buildItemView(context, DateTime.now().toString()),
            _buildItemView(context, DateTime.now().toString()),
            _buildItemView(context, DateTime.now().toString()),
            _buildItemView(context, DateTime.now().toString()),
            _buildItemView(context, DateTime.now().toString()),
            _buildItemView(context, DateTime.now().toString()),
            _buildItemView(context, DateTime.now().toString()),
            _buildItemView(context, DateTime.now().toString()),
          ],
        ),
      ),
    );
  }

  _buildItemView(BuildContext context, var text) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = width / 3;

    return new Container(
      child: new Card(
          elevation: 3.0,
          margin: EdgeInsets.all(10.0),
          child: new Container(
            child: new Column(
              children: <Widget>[
                new Container(
                  width: width,
                  height: height,
                  child: Image.network(
                    "https://i.pinimg.com/564x/b1/82/97/b182971dfd1fbea8f4142735b0435024.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 10.0)),
                new Text('Current Time $text'),
                new Padding(padding: new EdgeInsets.only(top: 10.0)),
              ],
            ),
          )
      ),
    );
  }

  // TODO: implement wantKeepAlive
  @override
  bool get wantKeepAlive => true;
}
