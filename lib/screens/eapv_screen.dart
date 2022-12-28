import 'package:app_vacinas/screens/eapvScreens/bcg_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/covid19_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/dt_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/dtpa_adulto_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/dtpa_infantil_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/febreamarela_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/hepatite_a_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/hib_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/hpv_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/influenza_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/meningo_acwy_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/meningo_c_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/pentavalente_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/pneumo10_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/pneumo13_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/pneumo23_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/tetraviral_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/triplicebac_infantil_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/tripliceviral_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/varicela_eapv_screen.dart';
import 'package:app_vacinas/screens/eapvScreens/vip_eapv_screen.dart';
import 'package:app_vacinas/screens/vacinasScreen/hepatite_b_screen.dart';
import 'package:flutter/material.dart';
import 'eapvScreens/hepatite_b_eapv_screen.dart';
import 'menu_screen.dart';

class EapvScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EapvScreenState();
  }
}

class _EapvScreenState extends State<EapvScreen> {
  Color topColor = Color.fromARGB(255, 42, 74, 117);
  Color bottomColor = Color.fromARGB(255, 28, 218, 195);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Eventos Adversos Pós Vacinais - EAPV"),
          backgroundColor: topColor,
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Hepatite B'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteBEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('BCG'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BCGEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Pentavalente DTP+HIB+Hep B'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PentavalenteEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('VIP'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VIPEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('VOP'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
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
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
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
              title: Text('Pneumocócica 10'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Pneumo10EapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Meningocócica C'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MeningoCEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Tríplice Viral (SRC)'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TripliceViralEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Tetraviral (SRC+Varicela)'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TetraviralEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Febre Amarela (FA)'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FebreAmarelaEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Hepatite A'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HepatiteAEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Tríplice Bacteriana Infantil (DTP)'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DTPEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Dupla Adulto (dT)'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DuplaAdultoEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Tríplice Bacteriana Adulto (dTpa)'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DTPAadultoEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Tríplice Bacteriana Infantil Acelular (DTPa)'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DTPAinfantilEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Varicela'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VaricelaEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('HPV'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HPVEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Meningocócica ACWY'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MeningoACWYEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Pneumocócica 23'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Pneumo23EapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Pneumocócica 13'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Pneumo13EapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('COVID-19'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Covid19EapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('Influenza'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InfluenzaEapvScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_outlined),
              title: Text('HIB'),
              subtitle: Text('Clique para acessar o menu EAPV dessa vacina'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HIBEapvScreen(),
                  ),
                );
              },
            ),
          ],
        ),
        bottomNavigationBar: FractionallySizedBox(
          heightFactor: 0.06,
          widthFactor: 1,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: topColor,
            ),
            child: Text(
              "Voltar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MenuScreen(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
