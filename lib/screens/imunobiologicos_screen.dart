import 'package:app_vacinas/screens/vacinasScreen/hepatite_b_screen.dart';
import 'package:flutter/material.dart';

class ImunoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImunoScreenState();
  }
}

class _ImunoScreenState extends State<ImunoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Imunobiológicos"),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Hepatite B'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('BCG'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Pentavalente DTP+HIB+Hep B'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('VIP'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('VOP'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Rotavírus'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Pneumo 10'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Meningo C'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Tríplice Viral (SRC)'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Tetraviral (SRC+Varicela)'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Febre Amarela (FA)'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Hepatite A'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('DTP'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('dT'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('dTpa'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('DTPa'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Varicela'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('HPV'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Meningo ACWY'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Pneumo 23'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Pneumo 13'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('COVID- 19'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Influenza'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('HIB'),
              subtitle: Text('Clique para acessar o menu dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
