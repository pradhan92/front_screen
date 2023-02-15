import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homescreentest3/graph.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UpdateView extends StatefulWidget {
  const UpdateView({Key? key}) : super(key: key);

  @override
  State<UpdateView> createState() => _UpdateViewState();
}

//String? gender;

class _UpdateViewState extends State<UpdateView> {
  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      // 画像がnullの場合戻る
      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } catch (e) {
      print('Failed to pick image: $e');
    }
  }

  // カメラを使う関数
  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      // 画像がnullの場合戻る
      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3AD5A6),
        title: const Text("Update"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MaterialButton(
                color: Color(0xff3AD5A6),
                child: const Text(
                  "Pick Image from Garary",
                  style: TextStyle(
                      color: Colors.white70, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  pickImage();
                },
              ),
              MaterialButton(
                color: Color(0xff3AD5A6),
                child: const Text(
                  "Pick Image from Camera",
                  style: TextStyle(
                      color: Colors.white70, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  pickImageC();
                },
              ),

              SizedBox(height: 20),
              // 画像がないと文字が表示される
              image != null ? Image.file(image!) : Text("No image selected"),

              const SizedBox(height: 20),

              //form field start be here in row
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 8.0),
                    child: Container(
                      width: 350,
                      child: const TextField(
                        decoration: InputDecoration(
                          label: Text(
                            "Calorie",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'Kcal',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              //
              SizedBox(
                height: 10,
              ),
              //              //
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 8.0),
                    child: Container(
                      width: 350,
                      child: const TextField(
                        decoration: InputDecoration(
                          label: Text(
                            "Protein",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'G',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              //
              SizedBox(
                height: 10,
              ),
              //              //
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 8.0),
                    child: Container(
                      width: 350,
                      child: const TextField(
                        decoration: InputDecoration(
                          label: Text(
                            "Lipid",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'G',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              //
              SizedBox(
                height: 10,
              ),
              //              //
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 8.0),
                    child: Container(
                      width: 350,
                      child: const TextField(
                        decoration: InputDecoration(
                          label: Text(
                            "Carbohydrate",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'G',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              //
              SizedBox(
                height: 10,
              ),
              //              //
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 8.0),
                    child: Container(
                      width: 350,
                      child: const TextField(
                        decoration: InputDecoration(
                          label: Text(
                            "Sugar",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'G',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              //
              SizedBox(
                height: 10,
              ),
              //              //
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 8.0),
                    child: Container(
                      width: 350,
                      child: const TextField(
                        decoration: InputDecoration(
                          label: Text(
                            "Salt",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'G',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              //
              SizedBox(
                height: 10,
              ),
              //              //
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 8.0),
                    child: Container(
                      width: 350,
                      child: const TextField(
                        decoration: InputDecoration(
                          label: Text(
                            "Enter Vitamins and Minerals",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    'G',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              //
              SizedBox(
                height: 10,
              ),

              //column with old code

              // Column(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(10.0),
              //       child: TextFormField(
              //         //controller: Calorie,
              //         decoration: const InputDecoration(
              //             label: Text(
              //               "Calorie",
              //               style: TextStyle(color: Colors.green),
              //             ),
              //             border: OutlineInputBorder()

              //             // Colors.amber,
              //             ),
              //         validator: ((value) =>
              //             value!.isEmpty ? 'Calorie required' : null),
              //         keyboardType: TextInputType.number,
              //       ),
              //     ),
              //   ],
              // ),

              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: TextFormField(
              //     //controller: protein,
              //     decoration: const InputDecoration(
              //       label: Text(" protein"),
              //       border: OutlineInputBorder(),
              //     ),
              //     validator: ((value) =>
              //         value!.isEmpty ? ' protein required' : null),
              //     keyboardType: TextInputType.number,
              //   ),
              // ),

              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: TextFormField(
              //     //controller: Lipid,
              //     decoration: const InputDecoration(
              //       label: Text("Lipid"),
              //       border: OutlineInputBorder(),
              //     ),
              //     validator: ((value) =>
              //         value!.isEmpty ? 'Lipid required' : null),
              //     keyboardType: TextInputType.number,
              //   ),
              // ),

              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: TextFormField(
              //     //controller: Carbohydrate,
              //     decoration: const InputDecoration(
              //       label: Text("Carbohydrate"),
              //       border: OutlineInputBorder(),
              //     ),
              //     validator: ((value) =>
              //         value!.isEmpty ? 'Carbohydrate required' : null),
              //     keyboardType: TextInputType.number,
              //   ),
              // ),

              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: TextFormField(
              //     //controller: Sugar,
              //     decoration: const InputDecoration(
              //       label: Text("Sugar"),
              //       border: OutlineInputBorder(),
              //     ),
              //     validator: ((value) =>
              //         value!.isEmpty ? 'Sugar required' : null),
              //     keyboardType: TextInputType.number,
              //   ),
              // ),

              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: TextFormField(
              //     //controller: Dietary fiber,
              //     decoration: const InputDecoration(
              //       label: Text("Dietary fiber"),
              //       border: OutlineInputBorder(),
              //     ),
              //     validator: ((value) =>
              //         value!.isEmpty ? 'Dietary fiber required' : null),
              //     keyboardType: TextInputType.number,
              //   ),
              // ),

              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: TextFormField(
              //     //controller: Salt,
              //     decoration: const InputDecoration(
              //       label: Text("Salt"),
              //       border: OutlineInputBorder(),
              //     ),
              //     validator: ((value) =>
              //         value!.isEmpty ? 'salt required' : null),
              //     keyboardType: TextInputType.number,
              //   ),
              // ),

              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: TextFormField(
              //     //controller:Enter Vitamins and minerals,
              //     decoration: const InputDecoration(
              //       label: Text("Enter Vitamins and minerals"),
              //       border: OutlineInputBorder(),
              //     ),
              //     validator: ((value) => value!.isEmpty
              //         ? 'Enter Vitamins and minerals required'
              //         : null),
              //     keyboardType: TextInputType.emailAddress,
              //   ),
              // ),

// end here old columns
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  //controller: MEMO,
                  decoration: const InputDecoration(
                    label: Text(
                      "MEMO",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    border: OutlineInputBorder(),
                  ),
                  validator: ((value) =>
                      value!.isEmpty ? 'MEMO required' : null),
                  keyboardType: TextInputType.emailAddress,
                  maxLines: 4,
                ),
              ),
              const SizedBox(height: 5),
              MaterialButton(
                color: Color(0xff3AD5A6),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white70, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Get.to(() => FiChartPage());
                },
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
