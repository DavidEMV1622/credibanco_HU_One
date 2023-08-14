import 'package:flutter/material.dart';

import '../utils/flutter_secure_storage.dart';
import 'avisos_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  // Llave global
  final GlobalKey<FormState> _formKey = GlobalKey();
  // Declarar el llamado de la clase SecureStorageMethods para utilizar el metodo get en los controladores
  final SecureStorageMethods _secureStorageMethods = SecureStorageMethods();


  // Se ejecuta una vez antes de que se ejecute el StatefulWidget
  @override
  void initState() {
    super.initState();
    fetchSecureStorageData();
  }

  // Metodo para asignar true IsfirstTime
  Future <void> fetchSecureStorageData() async {
    await _secureStorageMethods.setIsfirstTime(true); // Para inicializar las notificaciones a true
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Manejo del titulo
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Iniciar Sesión',
                    style: TextStyle(fontSize: 50),
                  ),
                ),

                // Manejo del formulario usuario
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Nombre de Usuario',
                    ),
                  ),
                ),

                // Manejo del formulario de la contraseña
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Contraseña',
                    ),
                  ),
                ),

                // Manejo del boton
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width, // Largo del boton Response
                    child: ElevatedButton(
                      onPressed: () async {
                        // Se obtiene el estado de IsfirstTime si es true o false
                        bool? isFirstTime = await _secureStorageMethods.getIsFirstTime();

                        // Si IsfirstTime es true, se pasa a las ventanas de avisos de lo contrario pasa a la ventana de inicio de sesion
                        if (isFirstTime!) {
                          await _secureStorageMethods.setIsfirstTime(false);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const AvisoPage()));
                        } else {
                          
                        }
                      },
                      // Texto del boton
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: Text('Siguiente pantalla'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}