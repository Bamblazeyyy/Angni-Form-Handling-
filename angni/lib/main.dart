import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main(){
  runApp(MainPage());
}

class MainPage extends StatelessWidget{
  
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.code)
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: _emailController,
              decoration : InputDecoration(
                labelText: 'Email Address',
              ),
              keyboardType: TextInputType.emailAddress
            ),
            
            TextFormField(
              controller: _passwordController,
              decoration : InputDecoration(
                labelText: 'Password',
              ),
              keyboardType: TextInputType.text         
            ),  
            
           SizedBox(height: 30), 
          ElevatedButton(
          onPressed: () {
              print('Your Email is : ${_emailController.text}');
              print('Your Password is: ${_passwordController.text}');
              }, 
              style: ElevatedButton.styleFrom(
               primary: Colors.blueGrey,),
              child: Text("Submit", style: TextStyle(color: Colors.white, fontSize:20))
          ),
        ],
       )
      )
    ); 
  }
}


