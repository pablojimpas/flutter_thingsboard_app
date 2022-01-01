import 'package:flutter/src/foundation/key.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/entity/entities_list_widget.dart';
import 'package:thingsboard_app/modules/asset/assets_base.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

class AssetsListWidget extends EntitiesListPageLinkWidget<AssetInfo>
    with AssetsBase {
  AssetsListWidget(TbContext tbContext,
      {Key? key, EntitiesListWidgetController? controller})
      : super(tbContext, key: key, controller: controller);

  @override
  void onViewAll() {
    navigateTo('/assets');
  }
}
