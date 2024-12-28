import 'package:batman_sign_up/common/batman_button.dart';
import 'package:flutter/material.dart';

class BatmanScreenSignUp extends AnimatedWidget {

  BatmanScreenSignUp(Animation animation) : super(listenable: animation);

  Animation get _animationSignUpIn => listenable as Animation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),                            
      child: Opacity(
        opacity: _animationSignUpIn.value,
        child: Transform.translate(
          offset: Offset(0.0, 100 * (1 - _animationSignUpIn.value)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('GET ACCESS', 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 35.0, 
                    color: Colors.white
                  ),
                ),
                const SizedBox(height: 20.0,),
                BatmanInput(label: 'FULL NAME',),
                BatmanInput(label: 'EMAIL ID',),
                BatmanInput(label: 'PASSWORD', password: true,),
                const SizedBox(height: 20.0,),
                BatmanButton(text: 'SIGN UP'),
                const SizedBox(height: 20.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BatmanInput extends StatelessWidget {

  final String label;
  final bool password;

  const BatmanInput({Key key, this.label, this.password = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey[800],
        width: 1.0
      )
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
            color: Colors.grey[600],
          ),
          enabledBorder: border,
          border: border,
          suffixIcon: password ? 
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: UnconstrainedBox(
                child: Image.asset('assets/images/batman_logo.png', 
                  height: 15,
                ),
              ),
            ) : null
        ),
      ),
    );
  }
}