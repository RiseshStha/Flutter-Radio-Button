import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({Key? key}) : super(key: key);

  @override
  State<RadioButtonScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioButtonScreen> {
  double? first;
  double? second;
  double? output;

  double? _result;
  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 232, 235),
      appBar: AppBar(
        title: const Text("Risesh Sama Shrestha"),
        backgroundColor: Color.fromARGB(255, 145, 191, 210),
        centerTitle: true,
      ),
      body: Form(
        key: myKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter a Number";
                  } else {
                    return null;
                  }
                },
                onChanged: (value) {
                  first = double.tryParse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "First Number",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter a Number";
                  } else {
                    return null;
                  }
                },
                onChanged: (value) {
                  second = double.tryParse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Second Number",
                  border: OutlineInputBorder(),
                ),
              ),
              RadioListTile(
                  title: const Text('Add'),
                  value: 1.0,
                  groupValue: _result,
                  onChanged: (value) {
                    setState(() {
                      _result = value;
                    });
                  }),
              RadioListTile(
                  title: const Text('Subtract'),
                  value: 2.0,
                  groupValue: _result,
                  onChanged: (value) {
                    setState(() {
                      _result = value;
                    });
                  }),
              RadioListTile(
                  title: const Text('Multiply'),
                  value: 3.0,
                  groupValue: _result,
                  onChanged: (value) {
                    setState(() {
                      _result = value;
                    });
                  }),
              RadioListTile(
                  title: const Text('Divide'),
                  value: 4.0,
                  groupValue: _result,
                  onChanged: (value) {
                    setState(() {
                      _result = value;
                    });
                  }),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 145, 191, 210),
                  ),
                  onPressed: () {
                    if (first != null && second != null && _result != null) {
                      setState(() {
                        switch (_result) {
                          case 1.0:
                            output = first! + second!;
                            break;
                          case 2.0:
                            output = first! - second!;
                            break;
                          case 3.0:
                            output = first! * second!;
                            break;
                          case 4.0:
                            output = first! / second!;
                            break;
                        }
                      });
                    }
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Text('Result: ${output ?? ""}')
            ],
          ),
        ),
      ),
    );
  }
}
