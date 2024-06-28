import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lyse💛',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = <Widget>[
    SignInPage(),
    SignUpPage(),
    Calculator(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lyse💛'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.login, color: _selectedIndex == 0 ? Colors.purple : Colors.grey),
              title: Text('Sign In', style: TextStyle(color: _selectedIndex == 0 ? Colors.purple : Colors.grey)),
              tileColor: _selectedIndex == 0 ? Colors.purple[50] : null,
              onTap: () => _onItemTapped(0),
            ),
            ListTile(
              leading: Icon(Icons.person_add, color: _selectedIndex == 1 ? Colors.purple : Colors.grey),
              title: Text('Sign Up', style: TextStyle(color: _selectedIndex == 1 ? Colors.purple : Colors.grey)),
              tileColor: _selectedIndex == 1 ? Colors.purple[50] : null,
              onTap: () => _onItemTapped(1),
            ),
            ListTile(
              leading: Icon(Icons.calculate, color: _selectedIndex == 2 ? Colors.purple : Colors.grey),
              title: Text('Calculator', style: TextStyle(color: _selectedIndex == 2 ? Colors.purple : Colors.grey)),
              tileColor: _selectedIndex == 2 ? Colors.purple[50] : null,
              onTap: () => _onItemTapped(2),
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Sign In',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: 'Sign Up',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Calculator',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        onTap: _onItemTapped,
      ),
    );
  }
}

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              const SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.purple),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Don\'t have an account? Sign Up',
                  style: TextStyle(color: Colors.purple),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Sign Up',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              const SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Already have an account? Sign In',
                  style: TextStyle(color: Colors.purple),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  String output = "0";
  String input = "";
  List<String> inputs = [];
  double result = 0.0;
  String operand = "";

  void buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "CLEAR") {
        output = "0";
        input = "";
        inputs.clear();
        result = 0.0;
        operand = "";
      } else if (buttonText == "DEL") {
        if (output.isNotEmpty) {
          output = output.substring(0, output.length - 1);
          if (output.isEmpty) {
            output = "0";
          }
          input = input.substring(0, input.length - 1);
        }
      } else if (buttonText == "+" || buttonText == "-" || buttonText == "/" || buttonText == "X") {
        if (output.isNotEmpty && !["+", "-", "/", "X"].contains(output[output.length - 1])) {
          inputs.add(output);
          inputs.add(buttonText);
          operand = buttonText;
          output = "0";
          input = inputs.join(" ");
        }
      } else if (buttonText == ".") {
        if (output.contains(".")) {
          return;
        } else {
          output += buttonText;
        }
      } else if (buttonText == "=") {
        if (output.isNotEmpty && !["+", "-", "/", "X"].contains(output[output.length - 1])) {
          inputs.add(output);
          result = _calculateResult(inputs);
          output = result.toString();
          input = "${inputs.join(" ")} = $output";
          inputs.clear();
          operand = "";
        }
      } else {
        if (output == "0") {
          output = buttonText;
        } else {
          output += buttonText;
        }
      }

      if (buttonText != "=" && buttonText != "CLEAR" && !["+", "-", "/", "X"].contains(buttonText)) {
        input += buttonText;
      }
    });
  }

  double _calculateResult(List<String> inputs) {
    double result = double.parse(inputs[0]);
    for (int i = 1; i < inputs.length; i += 2) {
      double nextNum = double.parse(inputs[i + 1]);
      switch (inputs[i]) {
        case "+":
          result += nextNum;
          break;
        case "-":
          result -= nextNum;
          break;
        case "X":
          result *= nextNum;
          break;
        case "/":
          result /= nextNum;
          break;
      }
    }
    return result;
  }

  Widget buildButton(String buttonText, Color color) {
    return Expanded(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(24.0),
          side: BorderSide(width: 2, color: color),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        onPressed: () => buttonPressed(buttonText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[50],
      child: Column(children: <Widget>[
        Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                input,
                style: const TextStyle(
                  fontSize: 24.0,
                  color: Colors.grey,
                ),
              ),
              Text(
                output,
                style: const TextStyle(
                  fontSize: 48.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          child: Divider(),
        ),
        Column(children: [
          Row(children: [
            buildButton("7", Colors.black),
            buildButton("8", Colors.black),
            buildButton("9", Colors.black),
            buildButton("/", Colors.orange),
          ]),
          Row(children: [
            buildButton("4", Colors.black),
            buildButton("5", Colors.black),
            buildButton("6", Colors.black),
            buildButton("X", Colors.orange),
          ]),
          Row(children: [
            buildButton("1", Colors.black),
            buildButton("2", Colors.black),
            buildButton("3", Colors.black),
            buildButton("-", Colors.orange),
          ]),
          Row(children: [
            buildButton(".", Colors.black),
            buildButton("0", Colors.black),
            buildButton("DEL", Colors.red),
            buildButton("+", Colors.orange),
          ]),
          Row(children: [
            buildButton("CLEAR", Colors.red),
            buildButton("=", Colors.green),
          ]),
        ]),
      ]),
    );
  }
}
