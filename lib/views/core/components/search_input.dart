import 'package:cosmetics_app/views/core/components/app_image.dart';
import 'package:flutter/material.dart';

class AppInput extends StatefulWidget {
  AppInput({
    super.key,
    this.suffixIcon,
    this.hint,
    this.label,
    this.withCountryCode = false,
    this.isPassword = false,
      this.bottomSpace,
  });

  final String? suffixIcon, hint, label;
  final bool withCountryCode, isPassword;
  final double? bottomSpace;

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  late int selectedCountryCode;
  final list = [10, 20, 30, 50];
  bool isHidden = true;

  @override
  void initState() {
    super.initState();
    selectedCountryCode = list.first;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: widget.bottomSpace ??16),
      child: Row(
        children: [
          if (widget.withCountryCode)
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 6),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(
                      context,
                    ).inputDecorationTheme.enabledBorder!.borderSide.color,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButton<int>(
                  icon: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 8),
                    child: AppImage(
                      image: 'down.svg',
                      height: 6,
                      width: 8,
                      fit: BoxFit.fill,
                    ),
                  ),
                  value: selectedCountryCode,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                  items: list
                      .map(
                        (e) =>
                            DropdownMenuItem<int>(value: e, child: Text('$e')),
                      )
                      .toList(),
                  onChanged: (value) {
                    selectedCountryCode = value!;
                    setState(() {});
                  },
                ),
              ),
            ),
          Expanded(
            child: TextFormField(
              obscureText: widget.isPassword&&isHidden,
              decoration: InputDecoration(
                labelText: widget.label,
                hintText: widget.hint,
                suffixIcon: widget.isPassword?IconButton(
                  onPressed: () {
                    isHidden = !isHidden;
                    setState(() {});
                  },
                  icon: AppImage(
                    image: isHidden ? 'visibility_off.svg' : 'visibility.svg',
                  ),
                ):widget.suffixIcon != null
                    ? AppImage(image: widget.suffixIcon!, height: 18, width: 18)
                    : null,
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
