import 'package:flutter/material.dart';
import 'package:todolist/Project/view.dart';
import 'package:todolist/Widget/circleAvatar.dart';
import 'package:todolist/Widget/labels.dart';
import '../Widget/projectView.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Hello Micheal"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Your \nProject(4)",
                    style: LabelStyle.heading,
                  ),
                  CircleImage(
                    radius: 70,
                    imageUrl:
                        "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const ProjectScreen())));
                },
                child: const Hero(
                  tag: 'project-view',
                  child: ProjectTile(optionEnable: true),
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
