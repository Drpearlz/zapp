import 'package:flutter/material.dart';
import 'package:zapp/constant.dart';
import 'package:zapp/utils/custom_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              const SizedBox(height:30.88,),
              const Text('Welcome Back',style:TextStyle(
                fontWeight:FontWeight.w700,
                fontSize: 20,
                color:deepPurple,
                fontFamily:'Raleway'
              ),),
               const SizedBox(height:4.41,),
               const Text('Login',style:TextStyle(
                 fontWeight:FontWeight.w700,
                 fontSize: 32,
                 color:deepPurple,
                 fontFamily:'Raleway'
               ),),
                const SizedBox(height:29.87,),
                SizedBox(
                  child:Image.asset('assets/images/Lifesavers Bust 2.png'),
                ),
              const SizedBox(height:23.47,),
              const Padding(
                padding:EdgeInsets.only(left:26.47,right:8.92),
                child:CustomField(
                  hintText:'Email',
                )
              ),
              const SizedBox(
                height:28.67,
              ),
              Padding(
                padding:const EdgeInsets.only(left:8.47,right:26.92),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.end,
                  children:const [
                   CustomField(
                    hintText:'Password',
                    suffixIcon:Icon(
                      Icons.remove_red_eye,
                      color:Color(0xFFA095C1),),),
                     SizedBox(height:8.82,),
                    Text('Forgot Password?',style:TextStyle(
                      fontSize:16,
                      fontFamily:'Raleway',
                      fontWeight:FontWeight.w500,
                      color:deepPurple,
                    ),)
                  ],
                ),
              ),
              const SizedBox(height:26.47,),
              Padding(
                padding: const EdgeInsets.only(left:17.47,right:17.92),
                child: Container(
                  width:double.infinity,
                  height:46.47,
                  decoration:BoxDecoration(
                    color:deepPurple,
                    borderRadius:BorderRadius.circular(8.8224)
                  ),
                  child:const Center(child:Text('Login',style:TextStyle(
                    color:Colors.white,
                    fontWeight:FontWeight.w600,
                    fontSize:16,
                    fontFamily:'Raleway'
                  ),)),
                ),
              ),
              const SizedBox(height:26.47,),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                  const Text('Don\'t have an account?',style:TextStyle(
                    fontSize:14,
                    color:Color(0xFF82799D),
                    fontWeight:FontWeight.w500,
                    fontFamily:'Raleway'
                  ),),
                  const SizedBox(width:8.82,),
                 GestureDetector(
                  onTap:(){
                    Navigator.of(context).pushNamed('/sign_up');
                  },
                   child:const Text('Sign Up',style:TextStyle(
                    fontFamily: 'Raleway',
                    fontSize:14,
                    color:deepPurple,
                    fontWeight:FontWeight.w500,
                   ),),
                 ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}