import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({
    super.key,
  });

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  bool state = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          state == false
              ? const Image(
                  height: 200,
                  color: Colors.white,
                  image: AssetImage('Assets/images/cube.png'),
                ).animate().fadeIn().slideY(
                  begin: 1.5, end: 0, duration: 500.ms, curve: Curves.easeInOut)
              : const Image(
                  height: 200,
                  color: Colors.white,
                  image: AssetImage('Assets/images/cube.png'),
                )
                  .animate()
                  .slideY(
                      begin: 0,
                      end: 1.5,
                      duration: 700.ms,
                      curve: Curves.easeInOut)
                  .fadeOut(duration: 700.ms),
          SizedBox(
            height: 5.h,
          ),
          state == false
              ? const Image(
                  height: 300,
                  color: Colors.black87,
                  image: AssetImage('Assets/images/new-moon.png'),
                ).animate().scale(duration: 100.ms).fadeIn(duration: 600.ms)
              : const Image(
                  height: 300,
                  color: Colors.black87,
                  image: AssetImage('Assets/images/new-moon.png'),
                )
                  .animate()
                  .scale(
                      end: const Offset(0, 0), delay: 500.ms, duration: 600.ms)
                  .fadeOut(duration: 600.ms),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    state = true;
                    print(state);
                    setState(() {});
                  },
                  backgroundColor: Colors.white70,
                  child: Text('Move'),
                ),
                SizedBox(
                  width: 3.w,
                ),
                FloatingActionButton(
                  onPressed: () {
                    print(state);
                    state = false;
                    setState(() {});
                  },
                  backgroundColor: Colors.white70,
                  child: Text('reverse'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
