import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  String? nombre = '';
  String? aPaterno = '';
  String? aMaterno = '';
  String? correo = '';
  String? pass = '';
  bool visibilidad = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Formulario de Datos"),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlutterLogo(size: 150,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: TextFormField(
                validator: (value)=> value!.isEmpty ? "Escribe tu(s) nombre(s)...!" : null,
                onSaved: (value)=> nombre = value,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  labelText: 'Nombre(s)',
                  labelStyle: TextStyle(color: Colors.blue),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                    gapPadding: 10
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                      gapPadding: 10
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: TextFormField(
                validator: (value)=> value!.isEmpty ? "Escribe tu apellido paterno...!" : null,
                onSaved: (value)=> aPaterno = value,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  labelText: 'Apellido Paterno',
                  labelStyle: TextStyle(color: Colors.blue),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                    gapPadding: 10
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                      gapPadding: 10
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: TextFormField(
                validator: (value)=> value!.isEmpty ? "Escribe tu apellido materno...!" : null,
                onSaved: (value)=> aMaterno = value,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  labelText: 'Apellido Materno',
                  labelStyle: TextStyle(color: Colors.blue),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                    gapPadding: 10
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                      gapPadding: 10
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: TextFormField(
                validator: (value)=> value!.isEmpty ? "Escribe tu correo electrónico...!" : null,
                onSaved: (value)=> correo = value,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Correo Electrónico',
                  labelStyle: TextStyle(color: Colors.blue),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                    gapPadding: 10
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                      gapPadding: 10
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: TextFormField(
                validator: (value)=> value!.isEmpty ? "Escribe tu contraseña...!" : value.length < 6 ? 'Contraseña debe ser de 6 cars mínimo...!' : null,
                onSaved: (value)=> pass = value,
                obscureText: visibilidad ? false : true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: GestureDetector(
                    onTap: (){
                      setState(() {
                        visibilidad = !visibilidad;
                      });
                    },
                    child: Icon(visibilidad ? Icons.visibility_off : Icons.visibility)
                  ),
                  labelText: 'Contraseña',
                  labelStyle: TextStyle(color: Colors.blue),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                    gapPadding: 10
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                      gapPadding: 10
                  )
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){
                    _formKey.currentState!.reset();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white
                  ),
                  child: Text("Limpiar"),
                ),
                ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      print(nombre);
                      _formKey.currentState!.save();
                      print(nombre);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white),
                  child: Text("Guardar")
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
