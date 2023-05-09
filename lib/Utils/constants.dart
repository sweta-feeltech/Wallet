String? Username;

String? Email;

String? DOB;

String? ID;

String? PhoneNum;

String? ServiceAuth;

String? ProfilePicture;


bool? AuthorizedUser;


/////
/// REGEX FOR EMAIL ADDRESS.
/////
final String EmailRegex = "^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

/////
/// REGEX FOR PASSWORD REQUIREMENTS.
/////
final String PassWordRegex = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

/////
/// REGEX FOR PRICE TO DIVIDE WITH COMMA IN INDIAN CURRENCY FORMAT.
/////
const String PRICEWITHCOMMA = r'(\d+?)(?=(\d\d)+(\d)(?!\d))(\.\d+)?';
