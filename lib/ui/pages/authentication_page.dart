import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/authentication_controller.dart';

// una interfaz muy sencilla en la que podemos crear los tres usuarios (signup)
// y después logearse (login) con cualquiera de las tres

class AuthenticationPage extends StatelessWidget {
  AuthenticationPage({Key? key}) : super(key: key);
  final AuthenticationController authenticationController = Get.find();

  void signIn() async {
    // aquí creamos los tres usuarios
    await authenticationController.signup('arturo@gmail.com', '123456');
    await authenticationController.signup('joan@gmail.com', '123456');
    await authenticationController.signup('sergio@gmail.com', '123456');
  }

  void login(String user) {
    // método usado para login
    authenticationController.login(user, '123456');
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.lightBlue[900],
          contentTextStyle: const TextStyle(color: Colors.white),
          title: const Text(
            ' ¡¡¡ Importante !!!',
            style: TextStyle(color: Colors.white),
          ),
          content: SingleChildScrollView(
            child: ListBody(children: const [
              Text(
                  'Antes de crear los usuarios, borrar todos los usuarios del sistema de autenticación y la base de datos de tiempo real de firebase')
            ]),
          ),
          actions: [
            TextButton(
                style: TextButton.styleFrom(primary: Colors.white),
                onPressed: () {
                  signIn();
                  Navigator.pop(context);
                },
                child: const Text('Continuar')),
            TextButton(
                style: TextButton.styleFrom(primary: Colors.white60),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancelar')),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      body: SingleChildScrollView(
        child: Form(
          child: Column(children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 50.0, bottom: 0.0),
              child: Text(
                'CHAT UNINORTE',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 50.0, left: 25),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Image.network(
                        'https://raw.githubusercontent.com/luisserranopro/curso-flutter/master/19firebaseapp/assets/auth.png')),
              ),
            ),

// ************************* container 1 *********** *********************************************************************************************

            Container(
              height: 60,
              width: 350,
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () {
                  _mostrarAlerta(context);
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    children: <Widget>[
                      Image.network('https://i.imgur.com/QTINPQt.png'),
                      const Padding(
                        padding: EdgeInsets.only(left: 40, right: 55),
                        child: Text(
                          'Crear los tres usuarios',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            backgroundColor: Colors.transparent,
                            letterSpacing: 0.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.white,
                  shadowColor: Colors.black45,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(
                      color: Colors.white70,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),

// **********************************   container 2       *******************************************************************************
            Container(
              height: 60,
              width: 350,
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () => login('arturo@gmail.com'),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    children: <Widget>[
                      Image.network('https://i.imgur.com/3aJi0Sv.png'),
                      const Padding(
                        padding: EdgeInsets.only(left: 40, right: 55),
                        child: Text(
                          'Ingresar con Arturo',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            backgroundColor: Colors.transparent,
                            letterSpacing: 0.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.white,
                  shadowColor: Colors.black45,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(
                      color: Colors.white70,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
// *****************************   container 3          ************************************************************************************
            Container(
              height: 60,
              width: 350,
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () => login('joan@gmail.com'),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    children: <Widget>[
                      Image.network('https://i.imgur.com/3aJi0Sv.png'),
                      const Padding(
                        padding: EdgeInsets.only(left: 40, right: 55),
                        child: Text(
                          'Ingresar con Joan',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            backgroundColor: Colors.transparent,
                            letterSpacing: 0.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.white,
                  shadowColor: Colors.black45,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(
                      color: Colors.white70,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
// *****************   container 4    ************************************************************************************************
            Container(
              height: 60,
              width: 350,
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () => login('sergio@gmail.com'),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    children: <Widget>[
                      Image.network('https://i.imgur.com/3aJi0Sv.png'),
                      const Padding(
                        padding: EdgeInsets.only(left: 40, right: 55),
                        child: Text(
                          'Ingresar con Sergio',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            backgroundColor: Colors.transparent,
                            letterSpacing: 0.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.white,
                  shadowColor: Colors.black45,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(
                      color: Colors.white70,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
