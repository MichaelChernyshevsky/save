enum PathUrl {
  v1,
  user,
  mobile,
}

const String apiUrl = 'https://***********';

const v1 = '/v1';

const user = '/user';

const mobile = '/mobile';

Uri getUrl(PathUrl value) {
  final path = getPath(value);
  return Uri.parse(apiUrl + path);
}

String getPath(PathUrl value) {
  switch (value) {
    case PathUrl.v1:
      return v1;
    case PathUrl.user:
      return user;
    case PathUrl.mobile:
      return mobile;
  }
}

getUrl(PathUrl.v1)
