import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/constants.dart';
import 'package:store_app/core/utils/app_router.dart';
import 'package:store_app/core/utils/size_config.dart';
import 'package:store_app/core/widgets/custom_botton.dart';
import 'package:store_app/features/authentication/presentation/views/widgets/custom_formfield.dart';
import 'package:store_app/features/authentication/presentation/views/widgets/form_erorr.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});
  @override
  State<SignUpForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignUpForm> {
  final formKey = GlobalKey<FormState>();
  TextEditingController passController = TextEditingController();
  final List<String> erorrList = [];
  String? email, password;
  bool checkBoxValue = false;
  String? confirmPass;
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CustomFormField(
                onsave: (value) {},
                onChanged: (value) {
                  if (value == null ||
                      value.isNotEmpty && erorrList.contains(kNamelNullError)) {
                    setState(() {
                      erorrList.remove(kNamelNullError);
                    });
                  }
                  return null;
                },
                validator: (value) {
                  if (value == null ||
                      value.isEmpty && !erorrList.contains(kNamelNullError)) {
                    setState(() {
                      erorrList.add(kNamelNullError);
                    });
                  }
                  return null;
                },
                keyboardType: TextInputType.name,
                suffixIcon: Icons.person_2_outlined,
                hint: 'Enter your Name',
                lable: 'Name',
              ),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              CustomFormField(
                onsave: (value) {
                  email = value;
                },
                onChanged: (value) {
                  if (value == null ||
                      value.isNotEmpty && erorrList.contains(kEmailNullError)) {
                    setState(() {
                      erorrList.remove(kEmailNullError);
                    });
                  } else if (emailValidatorRegExp.hasMatch(value) &&
                      erorrList.contains(kInvalidEmailError)) {
                    setState(() {
                      erorrList.remove(kInvalidEmailError);
                    });
                  }
                  return null;
                },
                validator: (value) {
                  if (value == null ||
                      value.isEmpty && !erorrList.contains(kEmailNullError)) {
                    setState(() {
                      erorrList.add(kEmailNullError);
                    });
                  } else if (!emailValidatorRegExp.hasMatch(value) &&
                      !erorrList.contains(kInvalidEmailError)) {
                    setState(() {
                      erorrList.add(kInvalidEmailError);
                    });
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                suffixIcon: Icons.mail_outline,
                hint: 'Enter your Email',
                lable: 'Email',
              ),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              CustomFormField(
                controller: passController,
                onSuffixTap: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                onsave: (value) {
                  password = value;
                },
                obscureText: obscureText,
                onChanged: (value) {
                  setState(() {
                    confirmPass = value;
                  });
                  if (value == null ||
                      value.isNotEmpty && erorrList.contains(kPassNullError)) {
                    setState(() {
                      erorrList.remove(kPassNullError);
                    });
                  } else if (value.length >= 8 &&
                      erorrList.contains(kShortPassError)) {
                    setState(() {
                      erorrList.remove(kShortPassError);
                    });
                  }
                  return null;
                },
                validator: (value) {
                  if (value == null ||
                      value.isEmpty && !erorrList.contains(kPassNullError)) {
                    setState(() {
                      erorrList.add(kPassNullError);
                    });
                  } else if (value.length < 8 &&
                      !erorrList.contains(kShortPassError)) {
                    setState(() {
                      erorrList.add(kShortPassError);
                    });
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: obscureText
                    ? Icons.lock_outline_rounded
                    : Icons.lock_open_outlined,
                hint: 'Enter your Password',
                lable: 'Password',
              ),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              CustomFormField(
                onSuffixTap: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                onsave: (value) {
                  // confirmPass = value;
                },
                obscureText: obscureText,
                onChanged: (value) {
                  // setState(() {
                  //   confirmPass = passController.text;
                  // });
                  if (value == confirmPass &&
                      erorrList.contains(kMatchPassError)) {
                    setState(() {
                      erorrList.remove(kMatchPassError);
                    });
                  }
                  return null;
                },
                validator: (value) {
                  if (value != confirmPass &&
                      !erorrList.contains(kMatchPassError)) {
                    setState(() {
                      erorrList.add(kMatchPassError);
                    });
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: obscureText
                    ? Icons.lock_outline_rounded
                    : Icons.lock_open_outlined,
                hint: 'Enter your Password again',
                lable: 'Confirm Password',
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              FormErorr(erorrList: erorrList),
              SizedBox(
                height: getProportionateScreenHeight(16),
              ),
              CustomBotton(
                text: 'Continue',
                onPressed: () {
                  context.push(AppRouter.kOTPview);
                  if (formKey.currentState!.validate() && erorrList.isEmpty) {
                    formKey.currentState!.save();
                    print('111111111111111');
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),);
  }
}
