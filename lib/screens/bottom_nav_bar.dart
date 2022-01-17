import 'package:cubit_navbar/cubit/cubit/bottomnavbarcubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomnavbarcubitCubit(),
      child: BlocBuilder<BottomnavbarcubitCubit, BottomnavbarcubitState>(
        builder: (context, state) {
          var _context = context.watch<BottomnavbarcubitCubit>();
          return Scaffold(
            body: _context.pages[_context.pageIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _context.pageIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "",
                ),
              ],
              onTap: (index) {
                context.read<BottomnavbarcubitCubit>().changePage(index);
              },
            ),
          );
        },
      ),
    );
  }
}
