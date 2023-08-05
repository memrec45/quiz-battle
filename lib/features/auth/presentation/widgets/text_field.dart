import 'package:flutter/material.dart';
import 'package:quiz_battle/config/theme/app_colors.dart';

abstract class CustomTextField extends TextFormField {
  String get label => "";
  TextInputType get inputType => TextInputType.text;
  TextInputAction get inputAction => TextInputAction.done;
  CustomTextField({super.key, required controller});
  // FocusNode get focusNode => FocusNode();
  @override
  FormFieldBuilder<String> get builder => (_) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            label: Text(label),
            alignLabelWithHint: false,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            floatingLabelAlignment: FloatingLabelAlignment.start,
          ),
          // focusNode: focusNode,
          // onTapOutside: (event) => focusNode.unfocus(),
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      );
}

class EmailField extends CustomTextField {
  final TextEditingController controller;

  EmailField({super.key, required this.controller})
      : super(controller: controller);
  @override
  String get label => "Email";
  @override
  TextInputType get inputType => TextInputType.emailAddress;
  // @override
  // FocusNode get focusNode => FocusNode();
}

class PasswordField extends CustomTextField {
  final TextEditingController controller;
  PasswordField({
    super.key,
    required this.controller,
  }) : super(controller: controller);
  // @override
  // FocusNode get focusNode => FocusNode();
  @override
  String get label => "Password";
  bool hidePassword = true;
  @override
  FormFieldBuilder<String> get builder => (_) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: StatefulBuilder(
          builder: (context, setState) => TextFormField(
            controller: controller,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              label: Text(label),
              alignLabelWithHint: false,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              floatingLabelAlignment: FloatingLabelAlignment.start,
              suffix: GestureDetector(
                onTap: () => setState(() {
                  hidePassword = !hidePassword;
                }),
                child: Icon(
                  hidePassword ? Icons.lock_outline : Icons.lock_open_sharp,
                  color: AppColors.secondaryColor,
                ),
              ),
            ),
            // focusNode: focusNode,
            obscureText: hidePassword,
          ),
        ),
      );
}

class NormalTextField extends CustomTextField {
  final TextEditingController controller;
  final String title;
  NormalTextField({
    super.key,
    required this.controller,
    required this.title,
  }) : super(controller: controller);
  @override
  String get label => title;
  @override
  TextInputType get inputType => TextInputType.emailAddress;
  // @override
  // FocusNode get focusNode => FocusNode();
}

// class a implements TextFormField{
//   @override
//   // TODO: implement autovalidateMode
//   AutovalidateMode get autovalidateMode => throw UnimplementedError();

//   @override
//   // TODO: implement builder
//   FormFieldBuilder<String> get builder => throw UnimplementedError();

//   @override
//   // TODO: implement controller
//   TextEditingController? get controller => throw UnimplementedError();

//   @override
//   StatefulElement createElement() {
//     // TODO: implement createElement
//     throw UnimplementedError();
//   }

//   @override
//   FormFieldState<String> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }

//   @override
//   List<DiagnosticsNode> debugDescribeChildren() {
//     // TODO: implement debugDescribeChildren
//     throw UnimplementedError();
//   }

//   @override
//   void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//     // TODO: implement debugFillProperties
//   }

//   @override
//   // TODO: implement enabled
//   bool get enabled => throw UnimplementedError();

//   @override
//   // TODO: implement initialValue
//   String? get initialValue => throw UnimplementedError();

//   @override
//   // TODO: implement key
//   Key? get key => throw UnimplementedError();

//   @override
//   // TODO: implement onSaved
//   FormFieldSetter<String>? get onSaved => throw UnimplementedError();

//   @override
//   // TODO: implement restorationId
//   String? get restorationId => throw UnimplementedError();

//   @override
//   DiagnosticsNode toDiagnosticsNode({String? name, DiagnosticsTreeStyle? style}) {
//     // TODO: implement toDiagnosticsNode
//     throw UnimplementedError();
//   }

//   @override
//   String toStringDeep({String prefixLineOne = '', String? prefixOtherLines, DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
//     // TODO: implement toStringDeep
//     throw UnimplementedError();
//   }

//   @override
//   String toStringShallow({String joiner = ', ', DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
//     // TODO: implement toStringShallow
//     throw UnimplementedError();
//   }

//   @override
//   String toStringShort() {
//     // TODO: implement toStringShort
//     throw UnimplementedError();
//   }

//   @override
//   // TODO: implement validator
//   FormFieldValidator<String>? get validator => throw UnimplementedError();
// }
