import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TemperatureConvertor extends StatefulWidget {
 const TemperatureConvertor({super.key});

  @override
  State<TemperatureConvertor> createState() => _TemperatureConvertorState();
}

class _TemperatureConvertorState extends State<TemperatureConvertor> {
  final TcController = TextEditingController(); //it is the variable that save text in it ,get value from it
  final _formKey = GlobalKey<FormState>();
  double? temperatureFarenheit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffAAB8BB),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child: Form(
                //set key to form
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 200.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: TcController,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null) {
                              return "Temp is null";
                            } else if (value.trim().isEmpty) {
                              return "Temperature required";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(13.h),
                              fillColor: const Color(0xffFFFFFF),
                              filled: true,
                              hintText: "Enter Temperature Here",
                              hintStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                // fontFamily: "Inter",
                                color: const Color(0xff878585),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.r)),
                                  borderSide: const BorderSide(
                                      // color: Color(0xffF5F6FA),
                                      )),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff146C94))),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xff6DA9E4),
                              ))),
                        ),
                        const SizedBox(height: 35),
                        const Text(
                          "Type the temperature in Celsius",
                          style: TextStyle(fontSize: 16),
                        ),
                        if (temperatureFarenheit !=null)
                        Text(
                          "$temperatureFarenheit °Fahrenheit",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 37),
                        SizedBox(
                          height: 56,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              backgroundColor: Color(0xff146C94),
                            ),
                            onPressed: () {
                           temperatureFarenheit=double.parse(TcController.text)*(9/5)+32;
                           setState(() {
                             
                           });
                            },
                            child: const Text(
                              "Convert",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xffFFFFFF)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
