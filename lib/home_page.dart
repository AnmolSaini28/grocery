// import 'package:flutter/material.dart';
// import 'package:temp_project/input_field.dart';
// import 'package:temp_project/theme.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   bool isCheckedTrems = false;
//   bool isCheckedPolicy = false;
//   bool passwordToggle = false;
//   bool confirmPasswordToggle = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Flipp"),
//         centerTitle: true,
//         leading: Align(
//           alignment: Alignment.bottomLeft,
//           child: GestureDetector(
//             onTap: () {},
//             child: Padding(
//               padding: const EdgeInsets.only(left: 10),
//               child: IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.keyboard_return,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           const Divider(
//             height: 1,
//             color: Colors.grey, // Divider color (border)
//             thickness: 2, // Divider thickness
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     const SizedBox(height: 20),
//                     const Image(
//                       image: AssetImage(
//                         "assets/images/image.png",
//                       ),
//                       height: 120,
//                     ),
//                     const SizedBox(
//                       height: 8,
//                     ),
//                     const Text(
//                       "Sign up for a Flipp account",
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     const Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text("Already have an account?"),
//                         SizedBox(
//                           width: 5,
//                         ),
//                         Text(
//                           "Sign in",
//                           style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             color: Colors.blue,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 8,
//                     ),
//                     const InputTextField(
//                       hintText: 'First name',
//                       isPassword: false,
//                     ),
//                     const SizedBox(height: 16),
//                     const InputTextField(
//                       hintText: 'Email',
//                       isPassword: false,
//                     ),
//                     const SizedBox(height: 16),
//                     const InputTextField(
//                       hintText: 'Password',
//                       isPassword: true,
//                     ),
//                     const SizedBox(height: 16),
//                     const InputTextField(
//                       hintText: 'Confirm password',
//                       isPassword: true,
//                     ),
//                     const SizedBox(height: 20),
//                     Text(
//                       'Your password should be a minimum of 8 characters and contain at least 1 capital letter and 1 number.',
//                       style: TextStyle(
//                         fontSize: 12,
//                         color: Colors.grey[600],
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Row(
//                       children: [
//                         Checkbox(
//                           value: isCheckedTrems,
//                           onChanged: (value) {
//                             setState(() {
//                               isCheckedTrems = value ?? false;
//                             });
//                           },
//                           checkColor: Colors.white,
//                           activeColor: CustomColors.buttonColor,
//                           shape: const RoundedRectangleBorder(
//                             borderRadius: BorderRadius.all(
//                               Radius.circular(
//                                 5,
//                               ),
//                             ),
//                           ),
//                         ),
//                         const Text('I have read and accept the '),
//                         const Text(
//                           'Terms of Use',
//                           style: TextStyle(
//                             color: Colors.blue,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Checkbox(
//                           value: isCheckedPolicy,
//                           onChanged: (value) {
//                             setState(() {
//                               isCheckedPolicy = value ?? false;
//                             });
//                           },
//                           checkColor: Colors.white,
//                           activeColor: CustomColors.buttonColor,
//                           shape: const RoundedRectangleBorder(
//                             borderRadius: BorderRadius.all(
//                               Radius.circular(
//                                 5,
//                               ),
//                             ),
//                           ),
//                         ),
//                         const Text('I have read and accept the '),
//                         const Text(
//                           'Privacy Policy',
//                           style: TextStyle(
//                             color: Colors.blue,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     Center(
//                       child: SizedBox(
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: CustomColors.buttonColor,
//                             padding: const EdgeInsets.symmetric(
//                               vertical: 15,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                           child: const Text(
//                             'Sign up',
//                             style: TextStyle(
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
// import 'package:temp_project/input_field.dart';
import 'package:temp_project/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCheckedTrems = false;
  bool isCheckedPolicy = false;
  bool passwordToggle = true; // Toggle for Password field visibility
  bool confirmPasswordToggle =
      true; // Toggle for Confirm Password field visibility

  final _formKey = GlobalKey<FormState>();

  // Controllers for the text fields
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  // Function to validate and submit the form
  void _validateForm() {
    if (_formKey.currentState!.validate()) {
      // Perform actions when the form is valid
      print('Form is valid');
    } else {
      print('Form is not valid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flipp"),
        centerTitle: true,
        leading: Align(
          alignment: Alignment.bottomLeft,
          child: GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_return,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const Divider(
            height: 1,
            color: Colors.grey, // Divider color (border)
            thickness: 2, // Divider thickness
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey, // Form key for validation
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      const Image(
                        image: AssetImage("assets/images/image.png"),
                        height: 120,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Sign up for a Flipp account",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?"),
                          SizedBox(width: 5),
                          Text(
                            "Sign in",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),

                      // First Name Field
                      TextFormField(
                        controller: firstNameController,
                        decoration: const InputDecoration(
                          hintText: 'First name',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your first name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      // Email Field
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                              .hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      // Password Field
                      TextFormField(
                        controller: passwordController,
                        obscureText: passwordToggle, // Toggle visibility
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(
                              passwordToggle
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                passwordToggle =
                                    !passwordToggle; // Toggle state
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (value.length < 8) {
                            return 'Password must be at least 8 characters long';
                          } else if (!RegExp(r'[A-Z]').hasMatch(value)) {
                            return 'Password must contain at least 1 capital letter';
                          } else if (!RegExp(r'[0-9]').hasMatch(value)) {
                            return 'Password must contain at least 1 number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      // Confirm Password Field
                      TextFormField(
                        controller: confirmPasswordController,
                        obscureText: confirmPasswordToggle, // Toggle visibility
                        decoration: InputDecoration(
                          hintText: 'Confirm password',
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(
                              confirmPasswordToggle
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                confirmPasswordToggle =
                                    !confirmPasswordToggle; // Toggle state
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                          } else if (value != passwordController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),

                      Text(
                        'Your password should be a minimum of 8 characters and contain at least 1 capital letter and 1 number.',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Terms Checkbox
                      Row(
                        children: [
                          Checkbox(
                            value: isCheckedTrems,
                            onChanged: (value) {
                              setState(() {
                                isCheckedTrems = value ?? false;
                              });
                            },
                            checkColor: Colors.white,
                            activeColor: CustomColors.buttonColor,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                          ),
                          const Text('I have read and accept the '),
                          const Text(
                            'Terms of Use',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),

                      // Privacy Checkbox
                      Row(
                        children: [
                          Checkbox(
                            value: isCheckedPolicy,
                            onChanged: (value) {
                              setState(() {
                                isCheckedPolicy = value ?? false;
                              });
                            },
                            checkColor: Colors.white,
                            activeColor: CustomColors.buttonColor,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                          ),
                          const Text('I have read and accept the '),
                          const Text(
                            'Privacy Policy',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      // Sign up Button
                      Center(
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: _validateForm,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColors.buttonColor,
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
