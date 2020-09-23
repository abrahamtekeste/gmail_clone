import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gmail_clone/screens/log_in.dart';
import 'package:gmail_clone/screens/navigation_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PasswordInsertScreen extends StatefulWidget {
  @override
  _PasswordInsertScreenState createState() => _PasswordInsertScreenState();
}

class _PasswordInsertScreenState extends State<PasswordInsertScreen> {
  bool _hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Google logo
            Padding(
              padding: const EdgeInsets.only(
                top: 72,
                bottom: 18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Google',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.orange,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            //Welcome text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black87,
                  ),
                )
              ],
            ),
            //email address displayed
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_rounded,
                  ),
                  Text(
                    'email@example.com',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            //Password field
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 48),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: TextFormField(
                      obscureText: _hidePassword,
                      decoration: InputDecoration(
                        labelText: 'Enter your password',
                        border: const OutlineInputBorder(),
                        suffixIcon: GestureDetector(
                          child: Icon(
                            _hidePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          dragStartBehavior: DragStartBehavior.down,
                          onTap: () {
                            setState(() {
                              _hidePassword = !_hidePassword;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Forgot password?
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
                  child: GestureDetector(
                    onTap: () {
                      print('Forgot password pressed');
                    },
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Next button
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 26.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RaisedButton(
                      onPressed: () {
                        // Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavigationPage()));
                      },
                      color: Colors.blueAccent,
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
