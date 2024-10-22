// to convert the response into non-nullable object (model)

import 'package:clean_architecture/app/constant.dart';
import 'package:clean_architecture/app/extensions.dart';
import 'package:clean_architecture/data/reponses/responses.dart';
import 'package:clean_architecture/domain/model/model.dart';

extension CustomerResponseX on CustomerResponse? {
  Customer toModel() {
    return Customer(
      id: this?.id.orEmpty() ?? Constant.empty,
      name: this?.name.orEmpty() ?? Constant.empty,
      numOfNotifications: this?.numOfNotifications.orZero() ?? Constant.zero,
    );
  }
}

extension ContactsResponseX on ContactsResponse? {
  Contacts toModel() {
    return Contacts(
      phone: this?.phone.orEmpty() ?? Constant.empty,
      email: this?.email.orEmpty() ?? Constant.empty,
      link: this?.link.orEmpty() ?? Constant.empty,
    );
  }
}

extension AuthResponseX on AuthResponse? {
  Authentication toModel() {
    return Authentication(
      contacts: this?.contacts.toModel(),
      customer: this?.customer.toModel(),
    );
  }
}

extension ServiceReponseX on ServiceReponse? {
  Service toModel() {
    return Service(
      id: this?.id.orZero() ?? Constant.zero,
      title: this?.title.orEmpty() ?? Constant.empty,
      image: this?.image.orEmpty() ?? Constant.empty,
    );
  }
}

extension StoreReponseX on StoreReponse? {
  Store toModel() {
    return Store(
      id: this?.id.orZero() ?? Constant.zero,
      title: this?.title.orEmpty() ?? Constant.empty,
      image: this?.image.orEmpty() ?? Constant.empty,
    );
  }
}

extension BannerReponseX on BannerReponse? {
  Banner toModel() {
    return Banner(
      id: this?.id.orZero() ?? Constant.zero,
      title: this?.title.orEmpty() ?? Constant.empty,
      image: this?.image.orEmpty() ?? Constant.empty,
      link: this?.link.orEmpty() ?? Constant.empty,
    );
  }
}

extension HomeResponseX on HomeResponse? {
  HomeObject toModel() {
    HomeData data = HomeData(
      services:
          this?.data?.services?.map((service) => service.toModel()).toList() ??
              [],
      stores:
          this?.data?.stores?.map((store) => store.toModel()).toList() ?? [],
      banners:
          this?.data?.banners?.map((banner) => banner.toModel()).toList() ?? [],
    );

    return HomeObject(data);
  }
}
