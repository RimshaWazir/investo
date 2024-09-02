import 'package:investo_app/data/app_data/exports.dart';
import 'package:investo_app/data/datasource/resources/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      context.to(const LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return InvestoScaffold(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(
              height: 200,
              width: 200,
              AppAssets.splashAnimation,
              repeat: true,
              reverse: false,
              fit: BoxFit.fill,
            ),
            Text(AppStrings.investo, style: AppStyles.extraBold())
          ],
        ),
      ),
    );
  }
}
