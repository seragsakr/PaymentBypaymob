//urls
const String baseurl = 'https://accept.paymob.com/api/';
//first token url
const String authenticationrequesturl = 'auth/tokens';
const String orderidurl = 'ecommerce/orders';
const String paymentkeytokenurl = 'acceptance/payment_keys';
const String paymentReferencecodeurl = 'acceptance/payments/pay';

const String paymentApiKey =
    'ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6VXhNaUo5LmV5SmpiR0Z6Y3lJNklrMWxjbU5vWVc1MElpd2libUZ0WlNJNkltbHVhWFJwWVd3aUxDSndjbTltYVd4bFgzQnJJam94TnpVMU9ESjkuS19HakN0RHZ3bUctOHZoMUFvcVVGbmc4aFBBaWxiZ0N4NUZ5QWhleXhzWlhXTUNKZzVqZUdCSE1qUTd2M3V5UnFXT05iZDREOU51aDdEc2Vrc0V6X1E=';
//card
const String integrationIDCard = '2080758';

//kiosk
const String integrationIDKiosk = '2083380';
String paymentFirstToken = '';
String paymentOrderId = '';
String finalToken = '';
String refcode = '';