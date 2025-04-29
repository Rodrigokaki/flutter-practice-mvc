import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? nextPage;
  final bool showBackButton;

  const CustomAppBar({
    super.key,
    this.nextPage,
    this.showBackButton = true
  });

  @override
  Widget build(BuildContext context){
    return AppBar(
      backgroundColor: AppColors.appBarBlue,
      leading: IconButton(
        icon: const Icon(Icons.home_filled),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
        },
        ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showBackButton)
            IconButton(
              icon: const Icon(Icons.chevron_left_rounded),
              onPressed: () {
                NavigationController.goBack(context);
              },
            ),
          Expanded(
            child: Text(
              'Rodrigo Kakiuchi - ${DateTime.now().year}',
              style: AppTextStyles.appBarText,
              textAlign: TextAlign.center,
            ),
          ),
          if (nextPage != null)
            IconButton(
              icon: const Icon(Icons.chevron_right_rounded),
              onPressed: () {
                NavigationController.goTo(context, nextPage!);
              },
            )
        ],
      ),
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get PreferredSize => const Size.fromHeight(kToolbarHeight);
}