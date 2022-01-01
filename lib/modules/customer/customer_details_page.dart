import 'package:flutter/src/foundation/key.dart';
import 'package:thingsboard_app/core/context/tb_context.dart';
import 'package:thingsboard_app/core/entity/entity_details_page.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

class CustomerDetailsPage extends ContactBasedDetailsPage<Customer> {
  CustomerDetailsPage(TbContext tbContext, String customerId, {Key? key})
      : super(tbContext,
            key: key,
            entityId: customerId,
            defaultTitle: 'Customer',
            subTitle: 'Customer details');

  @override
  Future<Customer?> fetchEntity(String id) {
    return tbClient.getCustomerService().getCustomer(id);
  }
}
