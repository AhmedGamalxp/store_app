import 'package:flutter/material.dart';
import 'package:store_app/core/constants.dart';
import 'package:store_app/core/utils/size_config.dart';
import 'package:store_app/core/widgets/custom_botton.dart';
import 'package:store_app/features/authentication/presentation/views/widgets/custom_formfield.dart';
import 'package:store_app/features/authentication/presentation/views/widgets/form_erorr.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});
  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final formKey = GlobalKey<FormState>();

  final List<String> erorrList = [];
  String? email, password;
  bool checkValue = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
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
                onsave: (value) {
                  password = value;
                },
                obscureText: true,
                onChanged: (value) {
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
                  } else if (value.length <= 8 &&
                      !erorrList.contains(kShortPassError)) {
                    setState(() {
                      erorrList.add(kShortPassError);
                    });
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: Icons.lock_outline_rounded,
                hint: 'Enter your Password',
                lable: 'Password',
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: kPrimaryColor,
                      value: checkValue,
                      onChanged: (value) {
                        setState(() {
                          checkValue = value!;
                        });
                      }),
                  const Text('Remember me'),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forget password',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: kTextColor),
                      ))
                ],
              ),
              SizedBox(height: getProportionateScreenWidth(10)),
              FormErorr(erorrList: erorrList),
              SizedBox(
                height: getProportionateScreenHeight(16),
              ),
              CustomBotton(
                text: 'Continue',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  }
                },
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}
