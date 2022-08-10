import 'package:flutter/material.dart';

import 'package:first_project/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Ludwin',
      'last_name': 'Heroe',
      'email': 'ludwin.jhurgo@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                    validator: (value) {
                      if (value == '') return 'Campo requerido';
                      if (value != null) {
                        return value.length < 3 ? 'Mínimo 4 caracteres' : null;
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Apellidos',
                    hintText: 'Apellidos del usuario',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'ejemplo@ejemplo.com',
                    keyBoardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Tu contraseña',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'Superuser',
                        child: Text('Superuser'),
                      ),
                      DropdownMenuItem(
                        value: 'Developer',
                        child: Text('Developer'),
                      ),
                      DropdownMenuItem(
                        value: 'Jr. Develpoer',
                        child: Text('Jr. Develpoer'),
                      ),
                    ],
                    onChanged: (String? value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no válido');
                        return;
                      }

                      //TODO imprimir valores del formulario
                      print(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
