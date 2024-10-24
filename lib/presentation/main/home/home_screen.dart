import 'package:carousel_slider/carousel_slider.dart';
import 'package:clean_architecture/app/di.dart';
import 'package:clean_architecture/domain/model/model.dart' as model;
import 'package:clean_architecture/presentation/common/state_renderer/state_renderer_impl.dart';
import 'package:clean_architecture/presentation/main/home/home_view_model.dart';
import 'package:clean_architecture/presentation/resources/color_manager.dart';
import 'package:clean_architecture/presentation/resources/routes_manager.dart';
import 'package:clean_architecture/presentation/resources/strings_manager.dart';
import 'package:clean_architecture/presentation/resources/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

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
        const Gap(AppSize.s12),
        _getBannersCarousel(),
        _getSection(AppStrings.services),
        _getServices(),
        _getSection(AppStrings.stores),
        _getStores(),
        const Gap(AppSize.s12),
      ],
    );
  }

  Widget _getSection(String title) {
    return Padding(
      padding: const EdgeInsets.all(
        AppPadding.p12,
      ),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .displaySmall!
            .copyWith(color: ColorManager.primary),
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
    return StreamBuilder(
      stream: _homeViewModel.services,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const SizedBox.shrink();
        List<model.Service> services = snapshot.data!;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
          child: SizedBox(
            height: AppSize.s140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: services
                  .map((service) => Card(
                        elevation: AppSize.s4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppSize.s12),
                          side: const BorderSide(
                            color: ColorManager.white,
                            width: AppSize.s1_5,
                          ),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(AppSize.s12),
                              child: Image.network(
                                service.image,
                                fit: BoxFit.cover,
                                width: AppSize.s120,
                                height: AppSize.s100,
                              ),
                            ),
                            const Gap(AppSize.s12),
                            Center(
                              child: Text(
                                service.title,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
        );
      },
    );
  }

  Widget _getStores() {
    return StreamBuilder(
        stream: _homeViewModel.services,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const SizedBox.shrink();
          final stores = snapshot.data!;
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p12,
            ),
            child: Flex(
              direction: Axis.vertical,
              children: [
                GridView.count(
                  crossAxisSpacing: AppSize.s8,
                  mainAxisSpacing: AppSize.s8,
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: List.generate(stores.length, (index) {
                    return InkWell(
                      onTap: () {
                        // navigate to store details screen
                        Navigator.of(context)
                            .pushNamed(Routes.storeDetailsRoute);
                      },
                      child: Card(
                        elevation: AppSize.s4,
                        child: Image.network(
                          stores[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
          );
        });
  }
}
