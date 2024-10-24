import 'package:carousel_slider/carousel_slider.dart';
import 'package:clean_architecture/app/di.dart';
import 'package:clean_architecture/domain/model/model.dart' as model;
import 'package:clean_architecture/presentation/common/state_renderer/state_renderer_impl.dart';
import 'package:clean_architecture/presentation/main/home/home_view_model.dart';
import 'package:clean_architecture/presentation/resources/color_manager.dart';
import 'package:clean_architecture/presentation/resources/strings_manager.dart';
import 'package:clean_architecture/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeViewModel _homeViewModel = instance.get<HomeViewModel>();

  @override
  void initState() {
    super.initState();
    _bind();
  }

  void _bind() {
    _homeViewModel.start();
  }

  @override
  void dispose() {
    _homeViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: StreamBuilder(
          stream: _homeViewModel.outputState,
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const SizedBox.shrink();
            return snapshot.data!.getScreenWidget(
              context,
              _getScreenWidgets(),
              _homeViewModel.start,
            );
          },
        ),
      ),
    );
  }

  Widget _getScreenWidgets() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _getBannersCarousel(),
        _getSection(AppStrings.services),
        _getServices(),
        _getSection(AppStrings.stores),
        _getStores(),
      ],
    );
  }

  Widget _getSection(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p12,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }

  Widget _getBannersCarousel() {
    return StreamBuilder(
      stream: _homeViewModel.banners,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const SizedBox.shrink();
        return _getBanner(snapshot.data!);
      },
    );
  }

  Widget _getBanner(List<model.Banner> banners) {
    return CarouselSlider(
        items: banners
            .map(
              (banner) => SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: AppSize.s1_5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s12),
                    side: const BorderSide(
                      color: ColorManager.white,
                      width: AppSize.s1_5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSize.s12),
                    child: Image.network(
                      banner.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
        options: CarouselOptions(
          height: AppSize.s190,
          autoPlay: true,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
        ));
  }

  Widget _getServices() {
    return const Center();
  }

  Widget _getStores() {
    return const Center();
  }
}
