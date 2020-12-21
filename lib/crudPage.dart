import 'package:esrimarket/deleteData.dart';
import 'package:esrimarket/insertData.dart';
import 'package:esrimarket/updateData.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CrudPage extends StatefulWidget{
  CrudPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CrudPageState createState() =>  _CrudPageState();
}

class _CrudPageState extends State<CrudPage>{
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

  Widget _updateButton() {
    return InkWell(
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(builder:(context) => UpdateData()));
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
          'Update Item',
          style: TextStyle(fontSize: 20, color: Color(0xfff7892b)),
        ),
      )
    );
  }

  Widget _deleteButton() {
    return InkWell(
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(builder:(context) => DeleteData()));
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
          'Remove Item',
          style: TextStyle(fontSize: 20, color: Color(0xfff7892b)),
        ),
      )
    );
  }

  Widget _viewButton() {
    return InkWell(
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(builder:(context) => CrudPage()));
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
          'View Item',
          style: TextStyle(fontSize: 20, color: Color(0xfff7892b)),
        ),
      )
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'E',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xffe46b10),
          ),
          children: [
            TextSpan(
              text: 'SRI',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'MARKET',
              style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2,4),
                blurRadius: 5,
                spreadRadius: 2
              )
            ],
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xfffbb448), Color(0xffe46b10)]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               _title(),
              SizedBox(
                height: 80,
              ),
              _insertButton(),
              SizedBox(
                height: 20,
              ),
              _updateButton(),
              SizedBox(
                height: 20,
              ),
              _deleteButton(),
              SizedBox(
                height: 20,
              ),
              _viewButton(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

}