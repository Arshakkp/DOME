import 'package:flutter/material.dart';

import 'utils/labels.dart';
import 'utils/theme.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  bool isToday = false;
  bool isTommorrow = false;
  DateTime? selectedDate;
  selectDate() {
    showDatePicker(
            builder: (BuildContext context, Widget? child) {
              return Theme(
                data: ThemeData.light().copyWith(
                  colorScheme: ThemeData.light().colorScheme.copyWith(
                        primary: Colors.black,
                        onPrimary: Colors.white,
                        surface: Colors.black,
                        secondary: Colors.black,
                        onSecondary: Colors.black,
                        onSurface: Colors.black,
                      ),
                ),
                child: child!,
              );
            },
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 22837)))
        .then((value) {
      if (value != null) {
        selectedDate = value;
      }
    });
  }

  selectTime() {
    showTimePicker(
        context: context,
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: ThemeData.light().colorScheme.copyWith(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    surface: Colors.white,
                    secondary: Colors.black,
                    onSecondary: Colors.black,
                    onSurface: Colors.black,
                  ),
            ),
            child: child!,
          );
        },
        initialTime: TimeOfDay(
            hour: DateTime.now().hour, minute: DateTime.now().minute));
  }

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
                  InkWell(
                    onTap: () {
                      setState(() {
                        isToday = true;
                        isTommorrow = false;
                      });
                    },
                    child: SelectButtonContainer(
                        label: "Today", isSelcted: isToday),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: (() {
                      setState(() {
                        isToday = false;
                        isTommorrow = true;
                      });
                    }),
                    child: SelectButtonContainer(
                        label: "Tomorrow", isSelcted: isTommorrow),
                  )
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: (() {
                      selectDate();
                    }),
                    child: TapIcon(icon: Icons.add_alert),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: (() {
                      selectTime();
                    }),
                    child: TapIcon(icon: Icons.add_alarm),
                  ),
                ],
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
                  SelectButtonContainer(
                      label: "Build First App", isSelcted: true)
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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(label: Text("Title")),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(label: Text("Description"))),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  child: const Center(
                    child: Text(
                      "Create",
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  Container TapIcon({required IconData icon}) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xffbe2e7e5),
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Icon(
        icon,
        color: Colors.black54,
      ),
    );
  }

  Container SelectButtonContainer({required String label, required isSelcted}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: isSelcted ? Colors.black : const Color(0xffbe2e7e5),
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 20,
          fontWeight: isSelcted ? FontWeight.bold : FontWeight.w500,
          color: isSelcted ? const Color(0xffbe2e7e5) : Colors.black,
        ),
      ),
    );
  }
}
