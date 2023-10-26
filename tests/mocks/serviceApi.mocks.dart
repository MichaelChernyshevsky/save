// Mocks generated by Mockito 5.4.2 from annotations
// in imaigination_mobile/test/main_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:imaigination_mobile/constants/exports/hidden_export.dart'
    as _i3;
import 'package:imaigination_mobile/constants/models/response.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeWidgetsResponse_0 extends _i1.SmartFake
    implements _i2.WidgetsResponse {
  _FakeWidgetsResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRandomResponse_1 extends _i1.SmartFake
    implements _i2.RandomResponse {
  _FakeRandomResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSetPasswordResponse_2 extends _i1.SmartFake
    implements _i2.SetPasswordResponse {
  _FakeSetPasswordResponse_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeVerificationResponse_3 extends _i1.SmartFake
    implements _i2.VerificationResponse {
  _FakeVerificationResponse_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMailResponse_4 extends _i1.SmartFake implements _i2.MailResponse {
  _FakeMailResponse_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAuthResponse_5 extends _i1.SmartFake implements _i2.AuthResponse {
  _FakeAuthResponse_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ServiceApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockServiceApi extends _i1.Mock implements _i3.ServiceApi {
  @override
  _i4.Future<Map<String, String>> getHeadersWithToken() => (super.noSuchMethod(
        Invocation.method(
          #getHeadersWithToken,
          [],
        ),
        returnValue: _i4.Future<Map<String, String>>.value(<String, String>{}),
        returnValueForMissingStub:
            _i4.Future<Map<String, String>>.value(<String, String>{}),
      ) as _i4.Future<Map<String, String>>);
  @override
  Map<String, String> getHeaders() => (super.noSuchMethod(
        Invocation.method(
          #getHeaders,
          [],
        ),
        returnValue: <String, String>{},
        returnValueForMissingStub: <String, String>{},
      ) as Map<String, String>);
  @override
  _i4.Future<_i2.WidgetsResponse> liked(int? id) => (super.noSuchMethod(
        Invocation.method(
          #liked,
          [id],
        ),
        returnValue:
            _i4.Future<_i2.WidgetsResponse>.value(_FakeWidgetsResponse_0(
          this,
          Invocation.method(
            #liked,
            [id],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.WidgetsResponse>.value(_FakeWidgetsResponse_0(
          this,
          Invocation.method(
            #liked,
            [id],
          ),
        )),
      ) as _i4.Future<_i2.WidgetsResponse>);
  @override
  _i4.Future<_i2.WidgetsResponse> search(
    int? page,
    String? request,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #search,
          [
            page,
            request,
          ],
        ),
        returnValue:
            _i4.Future<_i2.WidgetsResponse>.value(_FakeWidgetsResponse_0(
          this,
          Invocation.method(
            #search,
            [
              page,
              request,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.WidgetsResponse>.value(_FakeWidgetsResponse_0(
          this,
          Invocation.method(
            #search,
            [
              page,
              request,
            ],
          ),
        )),
      ) as _i4.Future<_i2.WidgetsResponse>);
  @override
  _i4.Future<_i2.WidgetsResponse> history(int? id) => (super.noSuchMethod(
        Invocation.method(
          #history,
          [id],
        ),
        returnValue:
            _i4.Future<_i2.WidgetsResponse>.value(_FakeWidgetsResponse_0(
          this,
          Invocation.method(
            #history,
            [id],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.WidgetsResponse>.value(_FakeWidgetsResponse_0(
          this,
          Invocation.method(
            #history,
            [id],
          ),
        )),
      ) as _i4.Future<_i2.WidgetsResponse>);
  @override
  _i4.Future<_i2.RandomResponse> random() => (super.noSuchMethod(
        Invocation.method(
          #random,
          [],
        ),
        returnValue: _i4.Future<_i2.RandomResponse>.value(_FakeRandomResponse_1(
          this,
          Invocation.method(
            #random,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.RandomResponse>.value(_FakeRandomResponse_1(
          this,
          Invocation.method(
            #random,
            [],
          ),
        )),
      ) as _i4.Future<_i2.RandomResponse>);
  @override
  _i4.Future<void> postImageDislike(
    int? generationId,
    int? imageId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #postImageDislike,
          [
            generationId,
            imageId,
          ],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> postImageLike(
    int? generationId,
    int? imageId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #postImageLike,
          [
            generationId,
            imageId,
          ],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> saveUserData(String? token) => (super.noSuchMethod(
        Invocation.method(
          #saveUserData,
          [token],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> postUser(String? name) => (super.noSuchMethod(
        Invocation.method(
          #postUser,
          [name],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> postFeedback({
    required String? comment,
    required int? evaluation,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #postFeedback,
          [],
          {
            #comment: comment,
            #evaluation: evaluation,
          },
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> delete(
    int? generationId,
    int? imageId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [
            generationId,
            imageId,
          ],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> logOut() => (super.noSuchMethod(
        Invocation.method(
          #logOut,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> saveRestPasswordToken(_i2.VerificationResponse? response) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveRestPasswordToken,
          [response],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> saveAuthResponse(_i2.AuthResponse? response) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveAuthResponse,
          [response],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> uploadToken() => (super.noSuchMethod(
        Invocation.method(
          #uploadToken,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<_i2.SetPasswordResponse> setNewPassword(
    String? token,
    String? email,
    String? password,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setNewPassword,
          [
            token,
            email,
            password,
          ],
        ),
        returnValue: _i4.Future<_i2.SetPasswordResponse>.value(
            _FakeSetPasswordResponse_2(
          this,
          Invocation.method(
            #setNewPassword,
            [
              token,
              email,
              password,
            ],
          ),
        )),
        returnValueForMissingStub: _i4.Future<_i2.SetPasswordResponse>.value(
            _FakeSetPasswordResponse_2(
          this,
          Invocation.method(
            #setNewPassword,
            [
              token,
              email,
              password,
            ],
          ),
        )),
      ) as _i4.Future<_i2.SetPasswordResponse>);
  @override
  _i4.Future<_i2.VerificationResponse> checkCode(
    String? email,
    String? code,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #checkCode,
          [
            email,
            code,
          ],
        ),
        returnValue: _i4.Future<_i2.VerificationResponse>.value(
            _FakeVerificationResponse_3(
          this,
          Invocation.method(
            #checkCode,
            [
              email,
              code,
            ],
          ),
        )),
        returnValueForMissingStub: _i4.Future<_i2.VerificationResponse>.value(
            _FakeVerificationResponse_3(
          this,
          Invocation.method(
            #checkCode,
            [
              email,
              code,
            ],
          ),
        )),
      ) as _i4.Future<_i2.VerificationResponse>);
  @override
  _i4.Future<_i2.MailResponse> sendMail(String? email) => (super.noSuchMethod(
        Invocation.method(
          #sendMail,
          [email],
        ),
        returnValue: _i4.Future<_i2.MailResponse>.value(_FakeMailResponse_4(
          this,
          Invocation.method(
            #sendMail,
            [email],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.MailResponse>.value(_FakeMailResponse_4(
          this,
          Invocation.method(
            #sendMail,
            [email],
          ),
        )),
      ) as _i4.Future<_i2.MailResponse>);
  @override
  _i4.Future<_i2.AuthResponse> login(
    String? email,
    String? password,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [
            email,
            password,
          ],
        ),
        returnValue: _i4.Future<_i2.AuthResponse>.value(_FakeAuthResponse_5(
          this,
          Invocation.method(
            #login,
            [
              email,
              password,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.AuthResponse>.value(_FakeAuthResponse_5(
          this,
          Invocation.method(
            #login,
            [
              email,
              password,
            ],
          ),
        )),
      ) as _i4.Future<_i2.AuthResponse>);
  @override
  _i4.Future<_i2.WidgetsResponse> textToImage({required dynamic model}) =>
      (super.noSuchMethod(
        Invocation.method(
          #textToImage,
          [],
          {#model: model},
        ),
        returnValue:
            _i4.Future<_i2.WidgetsResponse>.value(_FakeWidgetsResponse_0(
          this,
          Invocation.method(
            #textToImage,
            [],
            {#model: model},
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.WidgetsResponse>.value(_FakeWidgetsResponse_0(
          this,
          Invocation.method(
            #textToImage,
            [],
            {#model: model},
          ),
        )),
      ) as _i4.Future<_i2.WidgetsResponse>);
  @override
  _i4.Future<_i2.AuthResponse> registration(
    String? email,
    String? password,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #registration,
          [
            email,
            password,
          ],
        ),
        returnValue: _i4.Future<_i2.AuthResponse>.value(_FakeAuthResponse_5(
          this,
          Invocation.method(
            #registration,
            [
              email,
              password,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.AuthResponse>.value(_FakeAuthResponse_5(
          this,
          Invocation.method(
            #registration,
            [
              email,
              password,
            ],
          ),
        )),
      ) as _i4.Future<_i2.AuthResponse>);
  @override
  _i4.Future<_i2.AuthResponse> refresh(
    String? refreshToken,
    String? token,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #refresh,
          [
            refreshToken,
            token,
          ],
        ),
        returnValue: _i4.Future<_i2.AuthResponse>.value(_FakeAuthResponse_5(
          this,
          Invocation.method(
            #refresh,
            [
              refreshToken,
              token,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.AuthResponse>.value(_FakeAuthResponse_5(
          this,
          Invocation.method(
            #refresh,
            [
              refreshToken,
              token,
            ],
          ),
        )),
      ) as _i4.Future<_i2.AuthResponse>);
  @override
  _i4.Future<_i2.AuthResponse> getToken(
    String? email,
    String? password,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getToken,
          [
            email,
            password,
          ],
        ),
        returnValue: _i4.Future<_i2.AuthResponse>.value(_FakeAuthResponse_5(
          this,
          Invocation.method(
            #getToken,
            [
              email,
              password,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.AuthResponse>.value(_FakeAuthResponse_5(
          this,
          Invocation.method(
            #getToken,
            [
              email,
              password,
            ],
          ),
        )),
      ) as _i4.Future<_i2.AuthResponse>);
  @override
  _i4.Future<_i2.WidgetsResponse> controlNetModels() => (super.noSuchMethod(
        Invocation.method(
          #controlNetModels,
          [],
        ),
        returnValue:
            _i4.Future<_i2.WidgetsResponse>.value(_FakeWidgetsResponse_0(
          this,
          Invocation.method(
            #controlNetModels,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.WidgetsResponse>.value(_FakeWidgetsResponse_0(
          this,
          Invocation.method(
            #controlNetModels,
            [],
          ),
        )),
      ) as _i4.Future<_i2.WidgetsResponse>);
  @override
  _i4.Future<_i2.WidgetsResponse> deffusionModels() => (super.noSuchMethod(
        Invocation.method(
          #deffusionModels,
          [],
        ),
        returnValue:
            _i4.Future<_i2.WidgetsResponse>.value(_FakeWidgetsResponse_0(
          this,
          Invocation.method(
            #deffusionModels,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.WidgetsResponse>.value(_FakeWidgetsResponse_0(
          this,
          Invocation.method(
            #deffusionModels,
            [],
          ),
        )),
      ) as _i4.Future<_i2.WidgetsResponse>);
  @override
  _i4.Future<String> uploadImage({
    required bool? crop,
    required String? image,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadImage,
          [],
          {
            #crop: crop,
            #image: image,
          },
        ),
        returnValue: _i4.Future<String>.value(''),
        returnValueForMissingStub: _i4.Future<String>.value(''),
      ) as _i4.Future<String>);
  @override
  _i4.Future<String> upscale(
    int? generationId,
    int? imageId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #upscale,
          [
            generationId,
            imageId,
          ],
        ),
        returnValue: _i4.Future<String>.value(''),
        returnValueForMissingStub: _i4.Future<String>.value(''),
      ) as _i4.Future<String>);
}