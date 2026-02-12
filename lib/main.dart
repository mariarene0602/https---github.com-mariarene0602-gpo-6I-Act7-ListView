import 'package:flutter/material.dart';

void main() => runApp(AppEntrenamientoCanino());

class AppEntrenamientoCanino extends StatelessWidget {
  const AppEntrenamientoCanino({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entrenamiento Canino María Hernández',
      home: Entrenadores(),
    );
  }
}//Fin clase AppEntrenamientoCanino

class Entrenadores extends StatelessWidget {
  const Entrenadores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Título del AppBar
        title: const Text(
          'Entrenamiento Canino María Hernández',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)), // Color de texto blanco
        ),

        // Color de fondo azul marino
        backgroundColor: const Color.fromARGB(255, 232, 165, 238),

        // Ícono a la izquierda (Leading)
        leading: const Icon(Icons.pets, color: Color.fromARGB(255, 0, 0, 0)),

        // Botones de acción a la derecha (Actions)
        actions: [
          IconButton(
            icon: const Icon(Icons.build, color: Color.fromARGB(255, 0, 0, 0)), // Herramienta
            onPressed: () {
              // Acción al presionar
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.emergency,
              color: Color.fromARGB(255, 0, 0, 0),
            ), // Emergencia
            onPressed: () {
              // Acción al presionar
            },
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt, color: Color.fromARGB(255, 0, 0, 0)), // Cámara
            onPressed: () {
              // Acción al presionar
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(15), 
        children: [
          
          // Tarjeta 1: Obediencia Básica (Verde - Crecimiento)
          Card(
            elevation: 5,
            margin: EdgeInsets.only(bottom: 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green[700], 
                child: Icon(Icons.pets, color: Colors.white)
              ),
              title: Text('Obediencia Básica', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Sentado, quieto y acudir al llamado'),
              trailing: Icon(Icons.check_circle_outline, color: Colors.green),
            ),
          ),

          // Tarjeta 2: Socialización (Azul - Confianza)
          Card(
            elevation: 5,
            margin: EdgeInsets.only(bottom: 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue[600], 
                child: Icon(Icons.groups, color: Colors.white)
              ),
              title: Text('Socialización Grupal', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Mejora la relación con otros perros'),
              trailing: Icon(Icons.arrow_forward_ios, size: 18),
            ),
          ),

          // Tarjeta 3: Adiestramiento Avanzado (Naranja - Energía)
          Card(
            elevation: 5,
            margin: EdgeInsets.only(bottom: 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange[800], 
                child: Icon(Icons.psychology, color: Colors.white) // Representa agilidad mental
              ),
              title: Text('Trucos y Agilidad', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Desafíos físicos y mentales'),
              trailing: Icon(Icons.star, color: Colors.orange),
            ),
          ),

          // Tarjeta 4: Modificación de Conducta (Rojo - Urgente/Atención)
          Card(
            elevation: 5,
            margin: EdgeInsets.only(bottom: 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.redAccent, 
                child: Icon(Icons.warning_amber, color: Colors.white)
              ),
              title: Text('Problemas de Conducta', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Ansiedad, agresividad o miedos'),
              trailing: Icon(Icons.arrow_forward_ios, size: 18),
            ),
          ),

          // Tarjeta 5: Horarios y Citas (Morado - Gestión)
          Card(
            elevation: 5,
            margin: EdgeInsets.only(bottom: 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.purple[400], 
                child: Icon(Icons.calendar_month, color: Colors.white)
              ),
              title: Text('Agenda tu Sesión', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Consulta fechas disponibles'),
              trailing: Icon(Icons.event, color: Colors.purple),
            ),
          ),
        ],
      ),
    );
  }
}


