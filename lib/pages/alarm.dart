import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class alarm extends StatefulWidget {
  const alarm({super.key});

  @override
  State<alarm> createState() => _alarmState();
}

class _alarmState extends State<alarm> {

  bool light = true;

  @override
  void initState() {
    super.initState();
  }

  void _menuOpen() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar( title: Text('Menu'),),
            body: Row(
              children: [
                ElevatedButton(onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                },
                    child: Text('Back to home')),
                Padding(padding: EdgeInsets.only(left: 15)),
                Text('My Simple menu')
              ],
            ),
          );
        })
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('Alarm'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                _menuOpen();
              },
              icon: Icon(Icons.menu_open_outlined))
        ],
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('Alarm name'),
              subtitle: AutoSizeText('Sun Mun Tue Wed Thu Fri Sat', maxLines: 1),
              leading: Text('06:00', style: TextStyle(fontSize: 35),),
              trailing: Switch(
                value: light,
                activeColor: Colors.red,
                onChanged: (bool value) {
                  setState(() {
                    light = value;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
