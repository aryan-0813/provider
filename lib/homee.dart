import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providerclass.dart';

class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  void initState() {
    context.read<savedData>().getData();
    super.initState();
  }

  Widget build(BuildContext context) {
    final data = context.watch<savedData>().data;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("provider test"),
        backgroundColor: Color.fromARGB(255, 12, 28, 42),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data.valing),
            SizedBox(
              height: 20,
            ),
            namel()
          ],
        ),
      ),
    );
  }
}

class namel extends StatelessWidget {
  final TextEditingController ctr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            constraints: BoxConstraints(
              maxHeight: 50,
              maxWidth: 250,
            ),
          ),
          controller: ctr,
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            context.read<savedData>().setingVvalue(ctr.text);
          },
          child: Text("save data"),
        ),
      ],
    );
  }
}
