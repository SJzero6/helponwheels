import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helponwheels/screens/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool ishidden =true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 180,
                width: 180,
                child: Image.asset('assets/logo-removebg-preview.png'),),
                const SizedBox(height: 20,),
                Container(margin: const EdgeInsets.only(left: 20, right: 20),
                  alignment: Alignment.topLeft,
                  child: Text("Sign In",style: GoogleFonts.albertSans(textStyle: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),)),
               
               
                const SizedBox(height: 20,),
                Container(
                margin: const EdgeInsets.only(left: 20,right: 20),
                child:Column(children :[
                const TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Enter the Username',
                labelStyle: TextStyle(color: Colors.red),
                labelText: 'Username',
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))),),
                
                
                
                const SizedBox(height: 20,),
                TextField(
                  obscureText: ishidden,
                  decoration: InputDecoration(suffixIcon: IconButton(onPressed: (){

                    setState(() {
                      ishidden =!ishidden;
                    });
                  }, icon: ishidden?const Icon(Icons.visibility):const Icon(Icons.visibility_off)),
                    border: const OutlineInputBorder(),hintText: 'Enter the Password',labelText: 'Password',labelStyle: const TextStyle(color: Colors.red,),
                focusedBorder:const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)) ),),
                const SizedBox(height: 20,),
                
                Container(width: MediaQuery.of(context).size.width,
                height: 50,
                  margin: const EdgeInsets.only(left: 3,right: 3),
                  child: ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red
                  ),
                    onPressed: (){}, 
                    child: Text('Sign In',
                    style:GoogleFonts.albertSans(textStyle: 
                    const TextStyle(fontSize:20 ),
                    fontWeight: FontWeight.bold) ,)))])),
                  const SizedBox(height: 20,),
                  Container(
                    margin: const EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      children: [
                        const Text("Forgot Password ?"),
                        TextButton(style: TextButton.styleFrom(foregroundColor: Colors.red),onPressed: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Signup(),));

                        }, child: Text('Sign Up',style: GoogleFonts.albertSans(textStyle: const TextStyle(color: Colors.red ),fontSize:20 )))
                      ],
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}