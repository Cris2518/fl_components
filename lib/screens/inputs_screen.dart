import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firstName' : 'Cristian',
      'lastName'  : 'Ortega',
      'email'     : 'cristian@gmail.com',
      'password'  : 'Admin',
      'role'      : 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('InputsScreen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: formKey,
            child: Column(
              children: [
            
                CustomInputField(labelText: 'Nombre', hintText: 'Ingrese su nombre', icon: Icons.person, formProperty: 'firstName', formValues: formValues,),
                SizedBox(height: 30),
            
                CustomInputField(labelText: 'Apellido', hintText: 'Ingrese su apellido', icon: Icons.person_search_sharp, formProperty: 'lastName', formValues: formValues,),
                SizedBox(height: 30),
            
                CustomInputField(labelText: 'Correo', hintText: 'Ingrese su correo', icon: Icons.email, keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                SizedBox(height: 30),
            
                CustomInputField(labelText: 'Contraseña', hintText: 'Password', icon: Icons.lock, obscureText: true, formProperty: 'password', formValues: formValues,),
                SizedBox(height: 30),

                DropdownButtonFormField(
                  items: [
                    DropdownMenuItem(child: Text('User'), value: 'User'),
                    DropdownMenuItem(child: Text('Admin'), value: 'Admin'),
                    DropdownMenuItem(child: Text('Admin'), value: 'Admin'),
                    DropdownMenuItem(child: Text('Admin'), value: 'Admin'),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value.toString();
                  },
                ),
                SizedBox(height: 30),

                ElevatedButton(
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Enviar', style: TextStyle(fontSize: 20),)),
                  ),
                  onPressed: () {

                    // ! Ocultar el teclado
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!formKey.currentState!.validate()){
                      print('Formulario inválido');
                      return;
                    }

                  print(formValues);
                },),
            
              ],
            ),
          ),
        ),
      )
    );
  }
}
