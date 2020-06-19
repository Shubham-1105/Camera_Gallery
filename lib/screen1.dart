import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Screen 1")
      ),
      backgroundColor: Colors.purple,
      body: MyForm(),
        
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget>[ 
                   
          TextFormField(
            validator: (value){
              if(value.isEmpty){
                return 'Please Enter some Text';
              }
              return null;
            },
            decoration: InputDecoration(
              icon:Icon(Icons.send),
              border: const OutlineInputBorder(),
              hintText: " Enter Name",
              

            ),
            

          ),
          TextField(
            decoration: InputDecoration(
              hintText:"Enter about Something",
              icon:Icon(Icons.gesture),
              border: const OutlineInputBorder(),
              
            ),
          ),
          Padding(padding: const EdgeInsets.all(10.0),
          child: RaisedButton(
            elevation: 70.0,
            highlightElevation: 110.0,
            shape:StadiumBorder(),
            padding:EdgeInsets.all(20.0),
            focusElevation: 40.0,
            onPressed: (){
              if(_formKey.currentState.validate()){
                Scaffold.of(context)
                .showSnackBar(SnackBar(content:Text("Successfully Entered")));

              }

            },
            child: Text("Submit"),),)
        ]
      ),
      
    );
  }
}