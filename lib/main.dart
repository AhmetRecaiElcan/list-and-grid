import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  String _input = "";
  TextEditingController _textController = TextEditingController();

  List<int> _listItems = [];
  List<Widget> _gridItems = [];

  @override
  void initState() {
    super.initState();
    _textController.addListener(_onTextFieldChanged);
  }

  void _onTextFieldChanged() {
    setState(() {
      _input = _textController.text;
      _generateList();
      _generateGrid();
    });
  }

  void _generateList() {
    _listItems = [];
    int number = int.tryParse(_input) ?? 0;
    for (int i = 1; i <= number; i++) {
      _listItems.add(i);
    }
  }

  void _generateGrid() {
    _gridItems = [];
    int number = int.tryParse(_input) ?? 0;

    for (int i = 1; i <= number; i++) {
      Color randomColor = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
          .withOpacity(1.0);
      Widget item = Container(
        margin: EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical:
                8.0), // Sağ, sol, üst ve alt boşlukları eklemek için kullanılır
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(20.0), // Karelerin kavisini ayarlar
          color: randomColor,
        ),
        child: Center(
          child: Text('$i'),
        ),
      );

      _gridItems.add(Expanded(
        child: item,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List ve Grid Örneği'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 20), // Sağ ve sol boşluklar eklemek için kullanılır
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Bir sayı girin',
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(20.0), // Kutunun kavisini ayarlar
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          _selectedIndex == 0
              ? Expanded(
                  child: ListView.builder(
                    itemCount: _listItems.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('Öğe ${_listItems[index]}'),
                      );
                    },
                  ),
                )
              : Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: _gridItems.length,
                    itemBuilder: (context, index) {
                      return _gridItems[index];
                    },
                  ),
                ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_on),
            label: 'Grid',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
