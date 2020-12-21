import 'package:flutter/material.dart';
import 'package:esrimarket/Widget/bezierContainer.dart';

class InsertData extends StatefulWidget{
  InsertData({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InsertDataState createState() =>  _InsertDataState();
  
}

class _InsertDataState extends State<InsertData>{

  Widget _entryField(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  Widget _insertButton() {
    return InkWell(
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(builder:(context) => InsertData()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color(0xffdf8e33).withAlpha(100),
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            color: Colors.white),
        child: Text(
          'Insert Item',
          style: TextStyle(fontSize: 20, color: Color(0xfff7892b)),
        ),
      )
    );
  }

  Widget _insertWidget() {
    return Column(
      children: <Widget>[
        _entryField("Item Name"),
        _entryField("Quantity"),
        _entryField("Price"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -MediaQuery.of(context).size.height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: BezierContainer(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .2),
                    _insertWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    _insertButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}