// import 'package:flutter/cupertino.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class _LoginCard extends StatefulWidget {
//   const _LoginCard({
//     super.key,
//     required this.loadingController,
//     required this.userValidator,
//     required this.passwordValidator,
//     required this.onSwitchRecoveryPassword,
//     required this.onSwitchSignUpAdditionalData,
//     // required this.userType,
//     required this.requireAdditionalSignUpFields,
//     required this.onSwitchConfirmSignup,
//     required this.requireSignUpConfirmation,
//     this.onSubmitCompleted,
//     this.hideForgotPasswordButton = false,
//     this.hideSignUpButton = false,
//     this.loginAfterSignUp = true,
//     this.hideProvidersTitle = false,
//     this.introWidget,
//   });

//   final AnimationController loadingController;
//   final FormFieldValidator<String>? userValidator;
//   final FormFieldValidator<String>? passwordValidator;
//   final VoidCallback onSwitchRecoveryPassword;
//   final VoidCallback onSwitchSignUpAdditionalData;
//   final VoidCallback onSwitchConfirmSignup;
//   final VoidCallback? onSubmitCompleted;
//   final bool hideForgotPasswordButton;
//   final bool hideSignUpButton;
//   final bool loginAfterSignUp;
//   final bool hideProvidersTitle;
//   // final LoginUserType userType;
//   final bool requireAdditionalSignUpFields;
//   final bool requireSignUpConfirmation;
//   final Widget? introWidget;

//   @override
//   _LoginCardState createState() => _LoginCardState();
// }

// class _LoginCardState extends State<_LoginCard> with TickerProviderStateMixin {
//   final GlobalKey<FormState> _formKey = GlobalKey();

//   final _passwordFocusNode = FocusNode();
//   final _confirmPasswordFocusNode = FocusNode();

//   late TextEditingController _nameController;
//   late TextEditingController _passController;
//   late TextEditingController _confirmPassController;

//   var _isLoading = false;
//   var _isSubmitting = false;
//   var _showShadow = true;

//   /// switch between login and signup
//   late AnimationController _switchAuthController;
//   late AnimationController _postSwitchAuthController;
//   late AnimationController _submitController;

//   ///list of AnimationController each one responsible for a authentication provider icon
//   List<AnimationController> _providerControllerList = <AnimationController>[];

//   Interval? _nameTextFieldLoadingAnimationInterval;
//   Interval? _passTextFieldLoadingAnimationInterval;
//   Interval? _textButtonLoadingAnimationInterval;
//   late Animation<double> _buttonScaleAnimation;

//   bool get buttonEnabled => !_isLoading && !_isSubmitting;

//   @override
//   void initState() {
//     super.initState();

//     final auth = Provider.of<Auth>(context, listen: false);
//     _nameController = TextEditingController(text: auth.email);
//     _passController = TextEditingController(text: auth.password);
//     _confirmPassController = TextEditingController(text: auth.confirmPassword);

//     widget.loadingController.addStatusListener(handleLoadingAnimationStatus);

//     _switchAuthController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 800),
//     );
//     _postSwitchAuthController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 150),
//     );
//     _submitController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1000),
//     );
//     _providerControllerList = auth.loginProviders
//         .map(
//           (e) => AnimationController(
//             vsync: this,
//             duration: const Duration(milliseconds: 1000),
//           ),
//         )
//         .toList();

//     _nameTextFieldLoadingAnimationInterval = const Interval(0, .85);
//     _passTextFieldLoadingAnimationInterval = const Interval(.15, 1.0);
//     _textButtonLoadingAnimationInterval =
//         const Interval(.6, 1.0, curve: Curves.easeOut);
//     _buttonScaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(
//         parent: widget.loadingController,
//         curve: const Interval(.4, 1.0, curve: Curves.easeOutBack),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }

//   Widget _buildUserField(
//     double width,
//     LoginMessages messages,
//     Auth auth,
//   ) {
//     return AnimatedTextFormField(
//       controller: _nameController,
//       width: width,
//       loadingController: widget.loadingController,
//       interval: _nameTextFieldLoadingAnimationInterval,
//       labelText:
//           messages.userHint ?? TextFieldUtils.getLabelText(widget.userType),
//       autofillHints: _isSubmitting
//           ? null
//           : [TextFieldUtils.getAutofillHints(widget.userType)],
//       prefixIcon: TextFieldUtils.getPrefixIcon(widget.userType),
//       keyboardType: TextFieldUtils.getKeyboardType(widget.userType),
//       textInputAction: TextInputAction.next,
//       onFieldSubmitted: (value) {
//         FocusScope.of(context).requestFocus(_passwordFocusNode);
//       },
//       validator: widget.userValidator,
//       onSaved: (value) => auth.email = value!,
//       enabled: !_isSubmitting,
//     );
//   }
// }
