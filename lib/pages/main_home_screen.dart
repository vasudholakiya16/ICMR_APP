import 'package:flutter/material.dart';
import 'package:icmr/pages/HomePage/home_page.dart';
import 'package:icmr/utils/custom_app_bar.dart';
import 'package:icmr/utils/custom_nav_bar.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int selectedIndex = 0;
  List<Widget> screens = [
    const HomePage(),
    const Text("About Project"),
    const Text("Project"),
    const Text("reasearch Team"),
    const Text("what's new"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Row(
            //   children: [
            //     TextButton(
            //       onPressed: () {},
            //       child: Text(
            //         "Home",
            //         style: TextStyle(
            //           color: Colors.black,
            //           fontSize: MediaQuery.of(context).size.width * 0.014,
            //           fontWeight: FontWeight.w800,
            //         ),
            //       ),
            //     ),
            //     const SizedBox(
            //       width: 20,
            //     ),
            //     TextButton(
            //       onPressed: () {},
            //       child: Text(
            //         "AboutProject",
            //         style: TextStyle(
            //           color: Colors.black,
            //           fontSize: MediaQuery.of(context).size.width * 0.014,
            //           fontWeight: FontWeight.w800,
            //         ),
            //       ),
            //     ),
            //     const SizedBox(
            //       width: 20,
            //     ),
            //     TextButton(
            //       onPressed: () {},
            //       child: Text(
            //         "Project",
            //         style: TextStyle(
            //           color: Colors.black,
            //           fontSize: MediaQuery.of(context).size.width * 0.014,
            //           fontWeight: FontWeight.w800,
            //         ),
            //       ),
            //     ),
            //     const SizedBox(
            //       width: 20,
            //     ),
            //     TextButton(
            //       onPressed: () {},
            //       child: Text(
            //         "Research Team",
            //         style: TextStyle(
            //           color: Colors.black,
            //           fontSize: MediaQuery.of(context).size.width * 0.014,
            //           fontWeight: FontWeight.w800,
            //         ),
            //       ),
            //     ),
            //     const SizedBox(
            //       width: 20,
            //     ),
            //     TextButton(
            //       onPressed: () {},
            //       child: Text(
            //         "What's New",
            //         style: TextStyle(
            //           color: Colors.black,
            //           fontSize: MediaQuery.of(context).size.width * 0.014,
            //           fontWeight: FontWeight.w800,
            //         ),
            //       ),
            //     ),
            //     const Spacer(),
            //     GestureDetector(
            //       onTap: (){
            //         print("object");
            //       },
            //       child: Container(
            //         height: MediaQuery.of(context).size.height * 0.06,
            //         width: MediaQuery.of(context).size.width * 0.09,
            //         decoration: const BoxDecoration(
            //           color: Color.fromRGBO(21, 34, 102, 1),
            //           borderRadius: BorderRadius.all(
            //             Radius.circular(
            //               30,
            //             ),
            //           ),
            //         ),
            //         child: Center(
            //           child: Text(
            //             "Sign In",
            //             style: TextStyle(
            //               color: Colors.white,
            //               fontSize: MediaQuery.of(context).size.width * 0.014,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            CustomNavBar(selectedIndex: selectedIndex),
            // Spacer(),
            Expanded(child: screens[selectedIndex]),
            // const Expanded(child: HomePage()),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Column(
            //       children: [
            //         Text(
            //           "An Implementation Research Study ",
            //           style: TextStyle(
            //             fontSize: MediaQuery.of(context).size.width * 0.025,
            //             fontWeight: FontWeight.bold,
            //             color: const Color.fromRGBO(21, 34, 102, 1),
            //             fontFamily: "poppins",
            //           ),
            //         ),
            //         Text(
            //           "A High-quality patient centric integrated model for\nemergency care system in selected districts of India",
            //           style: TextStyle(
            //             fontSize: MediaQuery.of(context).size.width * 0.015,
            //             fontWeight: FontWeight.w700,
            //             color: const Color.fromRGBO(95, 121, 173, 1),
            //             fontFamily: "poppins",
            //           ),
            //         ),
            //         Text(
            //           "AN ICMR TASK FORCE STUDY",
            //           style: TextStyle(
            //             fontSize: MediaQuery.of(context).size.width * 0.015,
            //             fontWeight: FontWeight.bold,
            //             color: const Color.fromRGBO(84, 78, 78, 1),
            //             fontFamily: "poppins",
            //           ),
            //         ),
            //       ],
            //     ),
            //     Container(
            //       height: MediaQuery.of(context).size.height * 0.6,
            //       width: MediaQuery.of(context).size.width * 0.5,
            //       decoration: const BoxDecoration(
            //         image: DecorationImage(
            //           image: AssetImage(
            //             "cuate.png",
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // const Spacer(),
            // Column(
            //   children: [
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         RichText(
            //           text: TextSpan(
            //             children: [
            //               TextSpan(
            //                 text: 'Content Managed By ',
            //                 style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize:
            //                       MediaQuery.of(context).size.width * 0.016,
            //                 ),
            //               ),
            //               TextSpan(
            //                 text: 'ICMR- New Delhi',
            //                 style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize:
            //                       MediaQuery.of(context).size.width * 0.016,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         RichText(
            //           text: TextSpan(
            //             children: [
            //               TextSpan(
            //                 text: 'Design & Developed By ',
            //                 style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize:
            //                       MediaQuery.of(context).size.width * 0.016,
            //                 ),
            //               ),
            //               TextSpan(
            //                 text: 'Parul',
            //                 style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize:
            //                       MediaQuery.of(context).size.width * 0.016,
            //                   fontWeight: FontWeight.bold,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         const SizedBox(width: 4),
            //         Text(
            //           'University',
            //           style: TextStyle(
            //             color: Colors.red,
            //             fontSize: MediaQuery.of(context).size.width * 0.016,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}