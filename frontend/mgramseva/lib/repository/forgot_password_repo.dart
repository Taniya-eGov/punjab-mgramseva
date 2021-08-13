import 'package:mgramseva/model/forgotPassword/forgot_password.dart';
import 'package:mgramseva/providers/common_provider.dart';
import 'package:mgramseva/services/RequestInfo.dart';
import 'package:mgramseva/services/base_service.dart';
import 'package:mgramseva/services/urls.dart';
import 'package:mgramseva/utils/constants.dart';
import 'package:mgramseva/utils/global_variables.dart';
import 'package:mgramseva/utils/models.dart';
import 'package:provider/provider.dart';

class ForgotPasswordRepository extends BaseService {
  Future<ForgotPasswordOTP> forgotPassword(Map body) async {
    var commonProvider = Provider.of<CommonProvider>(
        navigatorKey.currentContext!,
        listen: false);
    final requestInfo = RequestInfo(APIConstants.API_MODULE_NAME, APIConstants.API_VERSION, APIConstants.API_TS, "_search",APIConstants.API_DID, APIConstants.API_KEY, APIConstants.API_MESSAGE_ID,
        commonProvider.userDetails!.accessToken);
    late ForgotPasswordOTP forgotPasswordOTP;
    var res = await makeRequest(
        url: UserUrl.OTP_RESET_PASSWORD,
        body: body,
        requestInfo: requestInfo,
        method: RequestType.POST);
    if (res != null) {
      forgotPasswordOTP = ForgotPasswordOTP.fromJson(res);
    }
    return forgotPasswordOTP;
  }
}