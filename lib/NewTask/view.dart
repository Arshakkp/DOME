import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todolist/Widget/labels.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: 'add-task',
                child: GestureDetector(
                  onTap: (() {
                    Navigator.pop(context);
                  }),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffbe2e7e5),
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("New Task", style: LabelStyle.heading),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xffbe2e7e5),
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Text(
                      "Today",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Text(
                      "Tomorrow",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              InkWell(
                onTap: (() {}),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffbe2e7e5),
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Icon(
                    Icons.add_alert,
                    color: Colors.black54,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "PROJECTS",
                style: LabelStyle.lightsubheading.copyWith(letterSpacing: 2),
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: (() {}),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffbe2e7e5),
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xffbe2e7e5),
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Text(
                      "Build Your First App",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "TITLE",
                style: LabelStyle.lightsubheading.copyWith(letterSpacing: 2),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.black38),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        labelText: "Hiii",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.black38),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        labelText: "Description",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ))),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      "Create",
                      style: TextStyle(fontSize: 23),
                    ))),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
