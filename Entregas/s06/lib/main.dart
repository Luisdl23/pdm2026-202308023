import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Salud',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 88, 8, 8),

        body: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Hola Luisdl', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
              ),
                Image.network(
                  'https://static.vecteezy.com/system/resources/thumbnails/035/857/779/small/people-face-avatar-icon-cartoon-character-png.png',
                  width: 100,
                  height: 100,

                ),
              ],
            ),

            Column(  
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  const SizedBox(height: 50),
                    Text('Cumple todo lo que deseas y necesitas hoy', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.blue, ),),
                    const SizedBox(height: 40),
                    Text('HOY VAS:', style: TextStyle(fontSize: 40, color: Colors.yellowAccent ),),
                    const SizedBox(height: 20,),
              ],
            ),

            Row(
              children: [
                Expanded(
              child: Card(
                  color: const Color.fromARGB(255, 46, 31, 87),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Agua', style: TextStyle(fontSize: 24, color: Colors.orange),),
                      Icon(Icons.water_drop, size: 50, color: Colors.blue,),

                      const SizedBox(height: 10),

                      const LinearProgressIndicator(
                        value: 0.7,
                      ),

                      const SizedBox(height: 10),

                      const Text('Ya vas el 60% de tu meta diaria', style: TextStyle(color: Colors.orange),),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(width: 10),

            Expanded(
              child: Card(
                  color: const Color.fromARGB(255, 46, 31, 87),

                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       Text('Trabajo', style: TextStyle(fontSize: 24, color: Colors.orange),),
                       Icon(Icons.work, size: 50.0, color: Colors.blue) ,                     
                      const SizedBox(height: 10),

                      const LinearProgressIndicator(
                        value: 0.5,
                      ),

                      const SizedBox(height: 10),
                       Text('Ya casi llegas a tu limite de trabajo', style: TextStyle( color: Colors.orange),),
                    ],
                  ),
                ),
              ),
            ),
              ],
            ),

          Row(
            children: [
              Expanded(
              child: Card(
                  color: const Color.fromARGB(255, 46, 31, 87),

                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        'Ejercicio', style: TextStyle(fontSize: 24, color: const Color.fromARGB(255, 204, 125, 6)),
                      ) ,
                       Icon(Icons.fitness_center, size: 50.0, color: Colors.blue) ,                     
                       const SizedBox(height: 20,),
                      LinearProgressIndicator(
                        value: 0.5,
                      ),
                    Text('Llevas 50 minutos de ejercicio', style: TextStyle(fontSize: 15, color: Colors.orange),),
                    ],
                  ),
                ),
              ),
            ),

            Expanded(
            child: Card(
                  color: const Color.fromARGB(255, 46, 31, 87),

              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                      Text('Descanso', style: TextStyle(fontSize: 24, color: Colors.orangeAccent ),),
                      Icon(Icons.coffee, size: 50.0, color: Colors.blue,),
                      
                    const SizedBox(height: 24,),
                    LinearProgressIndicator(
                      value: 0.70,
                    ),
                    Text('Llevas 3 estiramientos cortos', style: TextStyle(color: Colors.orangeAccent),),
                  ],
                ),
              ),
            ),
          )
            ],
            )
        ], //Children
        ),

         bottomNavigationBar: NavigationBar(
    destinations: [
      NavigationDestination(
        icon: Icon(Icons.directions_walk),
        label: 'Ejercicio',
      ),
      
      NavigationDestination(
        icon: Icon(Icons.water),
        label: 'Agua',
      ),

      NavigationDestination(
        icon: Icon(Icons.home),
        label: 'Inicio',
      ),

      NavigationDestination(
        icon: Icon(Icons.coffee),
        label: 'Descanso',
      ),

      NavigationDestination(
        icon: Icon(Icons.person),
        label: 'Perfil',
      ),
      
    ],
      ),
      ),
    );
  }
}