import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:my_stacked_app/ui/common/app_colors.dart';
import 'package:my_stacked_app/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: viewModel.isBusy? const Center(
            child: CircularProgressIndicator(),
          )
          :ListView.builder(
            itemCount: viewModel.data?.length,
            itemBuilder: (context,index){
              final book=viewModel.data?[index];
               return Card(
                 child: ListTile(
                  title: Text(book?.title ?? ''),

                 ),
               );
          },
          )
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
