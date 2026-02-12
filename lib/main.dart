import 'package:flutter/material.dart';

void main() => runApp(AppCrunchyroll());

class AppCrunchyroll extends StatelessWidget {
  const AppCrunchyroll({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crunchyroll',
      home: AppContenido(),
    ); //MaterialApp
  }
} //fin clase AppCrunchyroll

class AppContenido extends StatelessWidget {
  const AppContenido({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Crunchyroll el Victor',
          style: TextStyle(
            color: Colors.black, 
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        leading: const Icon(Icons.movie_filter, color: Colors.black),
        actions: const [
          IconButton(
            icon: Icon(Icons.add, color: Colors.black),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.message, color: Colors.black),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black),
            onPressed: null,
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 249, 139, 4),
                Color(0xFFFF4500),
              ],
            ),
          ),
        ),
        elevation: 10,
      ),// Appbar

      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 12.0),
            decoration: BoxDecoration(
              // Degradado de naranja a un tono más oscuro
              gradient: const LinearGradient(
                colors: [Colors.orange, Colors.deepOrangeAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              // Leading: Icono en negro sólido para resaltar
              leading: const CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(Icons.star, color: Colors.orange),
              ),
              // Texto con estilo diferenciado
              title: Text(
                'Elemento ${index + 1}',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  letterSpacing: 1.2,
                ),
              ),
              subtitle: Text(
                'Descripción del ítem',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontStyle: FontStyle.italic,
                ),
              ),
              // Trailing: Botón o icono en negro sólido
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 18.0,
              ),
            ),
          );
        },
      ), //body end

    );
  }
}