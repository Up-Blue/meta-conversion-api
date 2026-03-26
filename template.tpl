___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_upblue_meta_capi",
  "version": 1,
  "displayName": "Meta Conversion API Tag by Up Blue",
  "categories": [
    "ADVERTISING",
    "CONVERSIONS",
    "REMARKETING"
  ],
  "brand": {
    "id": "upblue_pl",
    "displayName": "Up Blue",
    "thumbnail": ""
  },
  "description": "Server-side tag that sends event data from GA4/Web clients to the Meta (Facebook) Conversions API. Built by Up Blue (upblue.pl).",
  "containerContexts": [
    "SERVER"
  ],
  "securityGroups": []
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "tagSetup",
    "displayName": "Configuration",
    "subParams": [
      {
        "type": "SELECT",
        "name": "eventResolution",
        "displayName": "Event Name Setup Method",
        "selectItems": [
          {
            "value": "inherit",
            "displayValue": "Inherit from client"
          },
          {
            "value": "override",
            "displayValue": "Override"
          }
        ],
        "simpleValueType": true,
        "subParams": [
          {
            "type": "RADIO",
            "name": "metaEventKind",
            "radioItems": [
              {
                "value": "standard",
                "displayValue": "Standard",
                "subParams": [
                  {
                    "type": "SELECT",
                    "name": "predefinedEvent",
                    "macrosInSelect": false,
                    "selectItems": [
                      { "value": "PageView", "displayValue": "PageView" },
                      { "value": "AddPaymentInfo", "displayValue": "AddPaymentInfo" },
                      { "value": "AddToCart", "displayValue": "AddToCart" },
                      { "value": "AddToWishlist", "displayValue": "AddToWishlist" },
                      { "value": "CompleteRegistration", "displayValue": "CompleteRegistration" },
                      { "value": "Contact", "displayValue": "Contact" },
                      { "value": "CustomizeProduct", "displayValue": "CustomizeProduct" },
                      { "value": "Donate", "displayValue": "Donate" },
                      { "value": "FindLocation", "displayValue": "FindLocation" },
                      { "value": "InitiateCheckout", "displayValue": "InitiateCheckout" },
                      { "value": "Lead", "displayValue": "Lead" },
                      { "value": "Purchase", "displayValue": "Purchase" },
                      { "value": "Schedule", "displayValue": "Schedule" },
                      { "value": "Search", "displayValue": "Search" },
                      { "value": "StartTrial", "displayValue": "StartTrial" },
                      { "value": "SubmitApplication", "displayValue": "SubmitApplication" },
                      { "value": "Subscribe", "displayValue": "Subscribe" },
                      { "value": "ViewContent", "displayValue": "ViewContent" }
                    ],
                    "simpleValueType": true
                  }
                ]
              },
              {
                "value": "custom",
                "displayValue": "Custom",
                "subParams": [
                  {
                    "type": "TEXT",
                    "name": "freeformEventName",
                    "simpleValueType": true
                  }
                ]
              }
            ],
            "simpleValueType": true,
            "enablingConditions": [
              {
                "paramName": "eventResolution",
                "paramValue": "override",
                "type": "EQUALS"
              }
            ],
            "displayName": "Event Type"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "touchpointOrigin",
        "displayName": "Action Source",
        "selectItems": [
          { "value": "website", "displayValue": "Website" },
          { "value": "email", "displayValue": "Email" },
          { "value": "app", "displayValue": "App" },
          { "value": "phone_call", "displayValue": "Phone Call" },
          { "value": "chat", "displayValue": "Chat" },
          { "value": "physical_store", "displayValue": "Physical Store" },
          { "value": "system_generated", "displayValue": "System Generated" },
          { "value": "business_messaging", "displayValue": "Business Messaging" },
          { "value": "other", "displayValue": "Other" }
        ],
        "simpleValueType": true,
        "defaultValue": "website",
        "alwaysInSummary": true,
        "help": "\u003cb\u003eWebsite\u003c/b\u003e — Conversion was made on your website.\u003cbr/\u003e\u003cb\u003eEmail\u003c/b\u003e — Conversion happened over email.\u003cbr/\u003e\u003cb\u003eApp\u003c/b\u003e — Conversion was made on your mobile app.\u003cbr/\u003e\u003cb\u003ePhone Call\u003c/b\u003e — Conversion was made over the phone.\u003cbr/\u003e\u003cb\u003eChat\u003c/b\u003e — Conversion was made via a messaging app, SMS, or online messaging feature.\u003cbr/\u003e\u003cb\u003ePhysical Store\u003c/b\u003e — Conversion was made in person at your physical store.\u003cbr/\u003e\u003cb\u003eSystem Generated\u003c/b\u003e — Conversion happened automatically, e.g. subscription renewal.\u003cbr/\u003e\u003cb\u003eBusiness Messaging\u003c/b\u003e — Conversion from ads that click to Messenger, Instagram or WhatsApp.\u003cbr/\u003e\u003cb\u003eOther\u003c/b\u003e — Conversion happened in a way not listed above."
      },
      {
        "type": "SELECT",
        "name": "chatPlatform",
        "displayName": "Messaging Channel",
        "macrosInSelect": false,
        "selectItems": [
          { "value": "messenger", "displayValue": "Messenger" },
          { "value": "whatsapp", "displayValue": "WhatsApp" },
          { "value": "instagram", "displayValue": "Instagram" }
        ],
        "simpleValueType": true,
        "defaultValue": "messenger",
        "enablingConditions": [
          {
            "paramName": "touchpointOrigin",
            "paramValue": "business_messaging",
            "type": "EQUALS"
          }
        ],
        "alwaysInSummary": true
      },
      {
        "type": "TEXT",
        "name": "graphApiKey",
        "displayName": "API Access Token",
        "simpleValueType": true,
        "help": "Your Meta API Access Token. See \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/server-side-api/get-started#access-token\" target\u003d\"_blank\"\u003eMeta documentation\u003c/a\u003e.",
        "valueValidators": [{ "type": "NON_EMPTY" }]
      },
      {
        "type": "TEXT",
        "name": "datasetId",
        "displayName": "Meta Pixel ID",
        "simpleValueType": true,
        "valueValidators": [{ "type": "NON_EMPTY" }],
        "help": "Your Meta (Facebook) Pixel ID."
      },
      {
        "type": "TEXT",
        "name": "diagnosticCode",
        "displayName": "Test Event Code",
        "simpleValueType": true,
        "help": "Provide a Test Event Code to verify server-side events in the Test Events tab of Events Manager.",
        "valueHint": "TEST12345"
      },
      {
        "type": "CHECKBOX",
        "name": "synthesizeBrowserId",
        "checkboxText": "Generate _fbp cookie if it does not exist",
        "simpleValueType": true,
        "defaultValue": true,
        "alwaysInSummary": true
      },
      {
        "type": "CHECKBOX",
        "name": "restrictCookieAccess",
        "checkboxText": "Use HttpOnly cookies",
        "simpleValueType": true,
        "help": "Forbids JavaScript from accessing the _fbp/_fbc cookies if enabled."
      },
      {
        "type": "CHECKBOX",
        "name": "enrichWithStoredData",
        "checkboxText": "Enable Event Enhancement",
        "simpleValueType": true,
        "help": "Use HTTP Only Secure Cookie (_gtmeec) to enhance event data with previously seen user data.",
        "defaultValue": true,
        "alwaysInSummary": true
      },
      {
        "type": "CHECKBOX",
        "name": "respondBeforeApi",
        "checkboxText": "Use Optimistic Scenario",
        "simpleValueType": true,
        "help": "The tag will call gtmOnSuccess() without waiting for Meta API response. Faster sGTM response, but the tag always reports success even if the API call fails."
      }
    ]
  },
  {
    "displayName": "Server Event Data Override",
    "name": "eventFieldsGroup",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "type": "GROUP",
    "subParams": [
      {
        "type": "LABEL",
        "name": "eventFieldsHint",
        "displayName": "Override server-level event properties. See \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/server-event\"\u003eMeta documentation\u003c/a\u003e.\u003cbr/\u003e\u003cbr/\u003e"
      },
      {
        "name": "eventFieldEntries",
        "simpleTableColumns": [
          {
            "defaultValue": "event_id",
            "displayName": "Property Name",
            "name": "name",
            "isUnique": true,
            "type": "SELECT",
            "selectItems": [
              { "value": "event_time", "displayValue": "Event Time" },
              { "value": "event_source_url", "displayValue": "Source URL" },
              { "value": "opt_out", "displayValue": "Opt Out" },
              { "value": "event_id", "displayValue": "Event ID" },
              { "value": "data_processing_options", "displayValue": "Data Processing Options" },
              { "value": "data_processing_options_country", "displayValue": "Data Processing Options Country" },
              { "value": "data_processing_options_state", "displayValue": "Data Processing Options State" },
              { "value": "referrer_url", "displayValue": "Referrer URL" }
            ],
            "valueValidators": [{ "type": "NON_EMPTY" }]
          },
          {
            "defaultValue": "",
            "displayName": "Property Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add property"
      }
    ]
  },
  {
    "displayName": "User Data",
    "name": "identityGroup",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "type": "GROUP",
    "subParams": [
      {
        "type": "LABEL",
        "name": "identityHint",
        "displayName": "User Data is your main \u003ca href\u003d\"https://www.facebook.com/business/help/765081237991954\"\u003eEvent Match Quality (EMQ)\u003c/a\u003e contributor. Better matched events improve ad targeting and lower costs.\u003cbr/\u003eThe tag automatically hashes parameters that need it. Pre-hashed (SHA256) data is also accepted.\u003cbr/\u003e\u003cbr/\u003e"
      },
      {
        "name": "identityEntries",
        "simpleTableColumns": [
          {
            "defaultValue": "em",
            "displayName": "Property Name",
            "name": "name",
            "isUnique": true,
            "type": "SELECT",
            "selectItems": [
              { "value": "em", "displayValue": "Email" },
              { "value": "ph", "displayValue": "Phone" },
              { "value": "ge", "displayValue": "Gender" },
              { "value": "db", "displayValue": "Date of Birth" },
              { "value": "ln", "displayValue": "Last Name" },
              { "value": "fn", "displayValue": "First Name" },
              { "value": "ct", "displayValue": "City" },
              { "value": "st", "displayValue": "State" },
              { "value": "zp", "displayValue": "Zip" },
              { "value": "country", "displayValue": "Country" },
              { "value": "external_id", "displayValue": "External ID" },
              { "value": "client_ip_address", "displayValue": "Client IP Address" },
              { "value": "client_user_agent", "displayValue": "Client User Agent" },
              { "value": "fbc", "displayValue": "Click ID (_fbc)" },
              { "value": "fbp", "displayValue": "Browser ID (_fbp)" },
              { "value": "subscription_id", "displayValue": "Subscription ID" },
              { "value": "lead_id", "displayValue": "Lead ID" },
              { "value": "fb_login_id", "displayValue": "FB Login ID" }
            ],
            "valueValidators": [{ "type": "NON_EMPTY" }]
          },
          {
            "defaultValue": "",
            "displayName": "Property Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add property"
      }
    ]
  },
  {
    "displayName": "Custom Data",
    "name": "extraParamsGroup",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "type": "GROUP",
    "subParams": [
      {
        "type": "LABEL",
        "name": "extraParamsHint",
        "displayName": "Override or add custom data properties. See \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/conversions-api/parameters/custom-data\"\u003eMeta documentation\u003c/a\u003e.\u003cbr/\u003e\u003cbr/\u003e"
      },
      {
        "name": "extraParamEntries",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Property Name",
            "name": "name",
            "isUnique": true,
            "type": "TEXT",
            "valueValidators": [{ "type": "NON_EMPTY" }]
          },
          {
            "defaultValue": "",
            "displayName": "Property Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add property"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "privacyGroup",
    "displayName": "Consent Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "RADIO",
        "name": "marketingPermission",
        "radioItems": [
          {
            "value": "optional",
            "displayValue": "Send data always"
          },
          {
            "value": "required",
            "displayValue": "Send data only when ad_storage consent is granted",
            "help": "Aborts tag execution if ad_storage consent (Google Consent Mode) is not granted."
          }
        ],
        "simpleValueType": true,
        "defaultValue": "optional"
      }
    ]
  },
  {
    "displayName": "Logging",
    "name": "diagnosticsGroup",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "type": "RADIO",
        "name": "verbosity",
        "radioItems": [
          { "value": "no", "displayValue": "Do not log" },
          { "value": "debug", "displayValue": "Log to console during debug/preview" },
          { "value": "always", "displayValue": "Always log to console" }
        ],
        "simpleValueType": true,
        "defaultValue": "debug"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

const computeEffectiveTldPlusOne = require('computeEffectiveTldPlusOne');
const createRegex = require('createRegex');
const decodeUriComponent = require('decodeUriComponent');
const encodeUriComponent = require('encodeUriComponent');
const fromBase64 = require('fromBase64');
const generateRandom = require('generateRandom');
const getAllEventData = require('getAllEventData');
const getContainerVersion = require('getContainerVersion');
const getCookieValues = require('getCookieValues');
const getRequestHeader = require('getRequestHeader');
const getTimestampMillis = require('getTimestampMillis');
const getType = require('getType');
const JSON = require('JSON');
const logToConsole = require('logToConsole');
const makeNumber = require('makeNumber');
const makeString = require('makeString');
const Math = require('Math');
const parseUrl = require('parseUrl');
const sendHttpRequest = require('sendHttpRequest');
const setCookie = require('setCookie');
const sha256Sync = require('sha256Sync');
const testRegex = require('testRegex');
const toBase64 = require('toBase64');

const API_VERSION = 'v24.0';
const API_ENDPOINT = 'https://graph.facebook.com';
const PARTNER_AGENT = 'upblue-gtmss-1.0.0';
const ENHANCEMENT_PROPS = ['em', 'ph', 'ln', 'fn', 'ct', 'st', 'zp', 'ge', 'db', 'country', 'external_id', 'fb_login_id'];

const GA4_TO_META_EVENT = {
  page_view: 'PageView',
  'gtm.dom': 'PageView',
  add_payment_info: 'AddPaymentInfo',
  add_to_cart: 'AddToCart',
  add_to_wishlist: 'AddToWishlist',
  sign_up: 'CompleteRegistration',
  begin_checkout: 'InitiateCheckout',
  generate_lead: 'Lead',
  purchase: 'Purchase',
  search: 'Search',
  view_item: 'ViewContent',
  contact: 'Contact',
  customize_product: 'CustomizeProduct',
  donate: 'Donate',
  find_location: 'FindLocation',
  schedule: 'Schedule',
  start_trial: 'StartTrial',
  submit_application: 'SubmitApplication',
  subscribe: 'Subscribe',
  'gtm4wp.addProductToCartEEC': 'AddToCart',
  'gtm4wp.productClickEEC': 'ViewContent',
  'gtm4wp.checkoutOptionEEC': 'InitiateCheckout',
  'gtm4wp.checkoutStepEEC': 'AddPaymentInfo',
  'gtm4wp.orderCompletedEEC': 'Purchase'
};

const GA4_EVENTS_TO_SKIP = {
  select_item: true,
  select_promotion: true,
  view_promotion: true,
  view_item_list: true,
  view_cart: true,
  remove_from_cart: true,
  add_shipping_info: true,
  refund: true,
  user_engagement: true,
  scroll: true,
  form_start: true,
  form_submit: true,
  first_visit: true,
  session_start: true,
  click: true
};

const eventData = getAllEventData();

if (!isConsentGivenOrNotRequired()) {
  return data.gtmOnSuccess();
}

const url = eventData.page_location || getRequestHeader('referer');
if (url && url.lastIndexOf('https://gtm-msr.appspot.com/', 0) === 0) {
  return data.gtmOnSuccess();
}

if (data.eventResolution === 'inherit' && GA4_EVENTS_TO_SKIP[eventData.event_name]) {
  log({
    Name: 'Meta CAPI (Up Blue)',
    Type: 'Skipped',
    Reason: 'Event "' + eventData.event_name + '" has no Meta standard equivalent'
  });
  return data.gtmOnSuccess();
}

var subDomainIndex = url ?
  computeEffectiveTldPlusOne(url).split('.').length - 1 :
  1;

let fbc = getCookieValues('_fbc')[0] || eventData._fbc;
let fbp = getCookieValues('_fbp')[0] || eventData._fbp;

if (url) {
  const urlParsed = parseUrl(url);
  if (urlParsed && urlParsed.searchParams.fbclid) {
    const decodedFbclid = decodeUriComponent(urlParsed.searchParams.fbclid);
    if (!fbc || extractFbcClickId(fbc) !== decodedFbclid) {
      fbc = 'fb.' + subDomainIndex + '.' + getTimestampMillis() + '.' + decodedFbclid;
    }
  }
}

if (!fbp && data.synthesizeBrowserId) {
  fbp = 'fb.' + subDomainIndex + '.' + getTimestampMillis() + '.' + generateRandom(1000000000, 2147483647);
}

const cookieOptions = {
  domain: 'auto',
  path: '/',
  samesite: 'Lax',
  secure: true,
  'max-age': 7776000,
  HttpOnly: !!data.restrictCookieAccess
};

if (fbc) setCookie('_fbc', fbc, cookieOptions);
if (fbp) setCookie('_fbp', fbp, cookieOptions);

const mappedEvent = buildEvent();

if (data.enrichWithStoredData) {
  enhanceFromCookie(mappedEvent.user_data);
  saveEnhancementCookie(mappedEvent.user_data);
}

const postBody = {
  data: [mappedEvent],
  partner_agent: PARTNER_AGENT + (data.enrichWithStoredData ? '-ee' : '')
};

if (eventData.test_event_code || data.diagnosticCode) {
  postBody.test_event_code = eventData.test_event_code || data.diagnosticCode;
}

const graphUrl = API_ENDPOINT + '/' + API_VERSION + '/' +
  enc(data.datasetId) + '/events?access_token=' + enc(data.graphApiKey);

log({
  Name: 'Meta CAPI (Up Blue)',
  Type: 'Request',
  EventName: mappedEvent.event_name,
  RequestUrl: graphUrl,
  RequestBody: postBody
});

sendHttpRequest(
  graphUrl,
  { headers: { 'content-type': 'application/json' }, method: 'POST' },
  JSON.stringify(postBody)
).then(function(result) {
  log({
    Name: 'Meta CAPI (Up Blue)',
    Type: 'Response',
    EventName: mappedEvent.event_name,
    ResponseStatusCode: result.statusCode,
    ResponseBody: result.body
  });

  if (!data.respondBeforeApi) {
    if (result.statusCode >= 200 && result.statusCode < 300) {
      data.gtmOnSuccess();
    } else {
      data.gtmOnFailure();
    }
  }
}).catch(function(error) {
  log({
    Name: 'Meta CAPI (Up Blue)',
    Type: 'Error',
    EventName: mappedEvent.event_name,
    Message: 'Request failed',
    Reason: JSON.stringify(error)
  });

  if (!data.respondBeforeApi) {
    data.gtmOnFailure();
  }
});

if (data.respondBeforeApi) {
  data.gtmOnSuccess();
}

function buildEvent() {
  const eventName = resolveEventName();

  var evt = {
    event_name: eventName,
    action_source: data.touchpointOrigin || 'website',
    event_time: Math.round(getTimestampMillis() / 1000),
    user_data: {},
    custom_data: {}
  };

  if (evt.action_source === 'business_messaging') {
    evt.messaging_channel = data.chatPlatform;
  }

  if (eventData.page_location) evt.event_source_url = eventData.page_location;
  if (eventData.page_referrer) evt.referrer_url = eventData.page_referrer;

  if (eventData.event_id) {
    evt.event_id = eventData.event_id;
  } else if (eventData.transaction_id) {
    evt.event_id = eventData.transaction_id;
  } else {
    evt.event_id = evt.event_time + '.' + generateRandom(1000000, 9999999);
  }

  evt.user_data = buildUserData();
  evt.custom_data = buildCustomData(eventName);

  applyOverrides(data.eventFieldEntries, evt);
  applyOverrides(data.identityEntries, evt.user_data);
  applyOverrides(data.extraParamEntries, evt.custom_data);

  if (evt.action_source === 'business_messaging') {
    evt.event_source_url = undefined;
    evt.user_data.client_ip_address = undefined;
    evt.user_data.client_user_agent = undefined;
    evt.user_data.fbc = undefined;
    evt.user_data.fbp = undefined;
  }

  evt.user_data = removeEmpty(evt.user_data);
  evt.custom_data = removeEmpty(evt.custom_data);

  if (evt.custom_data.value === 0 || evt.custom_data.value === '0') {
    evt.custom_data.value = '0.00';
  }

  evt.user_data = hashUserData(evt.user_data);

  return evt;
}

function resolveEventName() {
  if (data.eventResolution === 'inherit') {
    var clientEventName = eventData.event_name;
    return GA4_TO_META_EVENT[clientEventName] || clientEventName;
  }
  if (data.metaEventKind === 'standard') {
    return data.predefinedEvent;
  }
  return data.freeformEventName;
}

function buildUserData() {
  var ud = {};

  if (eventData.ip_override) {
    ud.client_ip_address = eventData.ip_override.split(' ').join('').split(',')[0];
  }
  if (eventData.user_agent) {
    ud.client_user_agent = eventData.user_agent;
  }

  if (fbc) ud.fbc = fbc;
  if (fbp) ud.fbp = fbp;

  var srcUser = {};
  var srcAddress = {};
  if (getType(eventData.user_data) === 'object') {
    srcUser = eventData.user_data;
    var addrType = getType(srcUser.address);
    if (addrType === 'object') {
      srcAddress = srcUser.address;
    } else if (addrType === 'array' && srcUser.address[0]) {
      srcAddress = srcUser.address[0];
    }
  }

  ud.em = eventData['x-fb-ud-em'] ||
    eventData.email ||
    srcUser.email_address || srcUser.email ||
    srcUser.sha256_email_address;

  ud.ph = eventData['x-fb-ud-ph'] ||
    eventData.phone ||
    srcUser.phone_number || srcUser.phone;

  ud.fn = eventData['x-fb-ud-fn'] ||
    eventData.firstName || eventData.first_name ||
    srcUser.first_name || srcAddress.first_name ||
    srcAddress.sha256_first_name;

  ud.ln = eventData['x-fb-ud-ln'] ||
    eventData.lastName || eventData.last_name ||
    srcUser.last_name || srcAddress.last_name ||
    srcAddress.sha256_last_name;

  ud.ct = eventData['x-fb-ud-ct'] ||
    eventData.city ||
    srcAddress.city;

  ud.st = eventData['x-fb-ud-st'] ||
    eventData.state || eventData.region ||
    srcUser.region || srcAddress.region;

  ud.zp = eventData['x-fb-ud-zp'] ||
    eventData.zip || eventData.postal_code ||
    srcUser.postal_code || srcAddress.postal_code;

  ud.country = eventData['x-fb-ud-country'] ||
    eventData.countryCode || eventData.country ||
    srcUser.country || srcAddress.country;

  ud.ge = eventData['x-fb-ud-ge'] || eventData.gender;
  ud.db = eventData['x-fb-ud-db'] || eventData.db;

  ud.external_id = eventData['x-fb-ud-external_id'] ||
    eventData.external_id || eventData.user_id || eventData.userId;

  ud.subscription_id = eventData.subscription_id || eventData.subscriptionId;
  ud.lead_id = eventData.lead_id || eventData.leadId;
  ud.fb_login_id = eventData['x-fb-ud-fb-login-id'] || eventData.fb_login_id;

  return ud;
}

function buildCustomData(eventName) {
  var cd = {};
  var currencyFromItems = '';
  var valueFromItems = 0;
  var collectedIds = [];
  var eventsWithNumItems = { InitiateCheckout: true, Purchase: true };

  if (eventData.items && eventData.items[0]) {
    cd.contents = [];
    if (eventsWithNumItems[eventName]) cd.num_items = eventData.items.length;
    cd.content_type = eventData['x-fb-cd-content_type'] ||
      eventData.content_type || 'product';
    currencyFromItems = eventData.items[0].currency;

    if (!eventData.items[1]) {
      if (eventData.items[0].item_name) cd.content_name = eventData.items[0].item_name;
      if (eventData.items[0].item_category) cd.content_category = eventData.items[0].item_category;
      if (eventData.items[0].price) {
        cd.value = eventData.items[0].quantity ?
          eventData.items[0].quantity * eventData.items[0].price :
          eventData.items[0].price;
      }
    }

    eventData.items.forEach(function(item) {
      var content = {};
      var itemId;
      if (item.item_id) {
        itemId = makeString(item.item_id);
      } else if (item.item_name) {
        itemId = makeString(item.item_name);
      }
      if (itemId) {
        content.id = itemId;
        collectedIds.push(itemId);
      }
      content.quantity = item.quantity || 1;
      if (item.item_name) content.title = item.item_name;
      if (item.item_brand) content.brand = item.item_brand;
      if (item.item_category) content.category = item.item_category;
      if (item.price) {
        content.item_price = makeNumber(item.price);
        valueFromItems += item.quantity ?
          item.quantity * content.item_price :
          content.item_price;
      }
      if (item.delivery_category) content.delivery_category = item.delivery_category;
      cd.contents.push(content);
    });

    if (collectedIds.length > 0) {
      cd.content_ids = deduplicateArray(collectedIds);
    }
  }

  if (eventData['x-ga-mp1-ev']) {
    cd.value = eventData['x-ga-mp1-ev'];
  } else if (eventData['x-ga-mp1-tr']) {
    cd.value = eventData['x-ga-mp1-tr'];
  } else if (eventData.value) {
    cd.value = eventData.value;
  }

  if (eventData.currency) {
    cd.currency = eventData.currency;
  } else if (currencyFromItems) {
    cd.currency = currencyFromItems;
  }

  if (eventData.search_term) cd.search_string = eventData.search_term;
  if (eventData.transaction_id) cd.order_id = eventData.transaction_id;
  if (eventData.predicted_ltv) cd.predicted_ltv = eventData.predicted_ltv;
  if (eventData.status) cd.status = eventData.status;
  if (eventData.delivery_category) cd.delivery_category = eventData.delivery_category;

  if (eventData['x-fb-cd-content_ids']) cd.content_ids = eventData['x-fb-cd-content_ids'];
  if (eventData['x-fb-cd-content_name']) cd.content_name = eventData['x-fb-cd-content_name'];
  if (eventData['x-fb-cd-content_category']) cd.content_category = eventData['x-fb-cd-content_category'];
  if (eventData['x-fb-cd-num_items']) cd.num_items = eventData['x-fb-cd-num_items'];
  if (eventData['x-fb-cd-predicted_ltv']) cd.predicted_ltv = eventData['x-fb-cd-predicted_ltv'];
  if (eventData['x-fb-cd-status']) cd.status = eventData['x-fb-cd-status'];
  if (eventData['x-fb-cd-delivery_category']) cd.delivery_category = eventData['x-fb-cd-delivery_category'];

  if (!cd.content_ids) {
    if (eventData.content_ids) {
      var rawIds = getType(eventData.content_ids) === 'array' ?
        eventData.content_ids : [eventData.content_ids];
      cd.content_ids = deduplicateArray(rawIds.map(function(id) {
        return makeString(id);
      }));
    }
  }

  if (!cd.content_ids && cd.contents && cd.contents[0]) {
    var derivedIds = [];
    for (var i = 0; i < cd.contents.length; i++) {
      if (cd.contents[i] && cd.contents[i].id) {
        derivedIds.push(cd.contents[i].id);
      }
    }
    if (derivedIds.length > 0) cd.content_ids = deduplicateArray(derivedIds);
  }

  if (eventName === 'Purchase') {
    if (!cd.currency) cd.currency = 'USD';
    if (!cd.value) cd.value = valueFromItems ? valueFromItems : 0;
  }

  return cd;
}

function hashUserData(userData) {
  var keysToHash = ['em', 'ph', 'ge', 'db', 'ln', 'fn', 'ct', 'st', 'zp', 'country', 'external_id'];
  for (var key in userData) {
    if (keysToHash.indexOf(key) !== -1) {
      userData[key] = hashValue(key, userData[key]);
    }
  }
  return userData;
}

function hashValue(key, value) {
  if (!value) return value;
  var type = getType(value);
  if (type === 'undefined' || value === 'undefined') return undefined;
  if (type === 'array') {
    return value.map(function(v) { return hashValue(key, v); });
  }
  if (isAlreadyHashed(value)) return value;
  value = makeString(value).trim().toLowerCase();
  if (key === 'ph') {
    value = normalizePhone(value);
  } else if (key === 'ct') {
    value = value.split(' ').join('');
  }
  return sha256Sync(value, { outputEncoding: 'hex' });
}

function isAlreadyHashed(value) {
  if (!value) return false;
  return makeString(value).match('^[A-Fa-f0-9]{64}$') !== null;
}

function normalizePhone(phone) {
  if (!phone) return phone;
  var digitRegex = createRegex('^[0-9]$');
  return phone.split('').filter(function(ch) {
    return testRegex(digitRegex, ch);
  }).join('');
}

function enhanceFromCookie(userData) {
  var cookieValues = getCookieValues('_gtmeec');
  if (!cookieValues || cookieValues.length === 0) return;
  var encoded = cookieValues[0];
  if (!encoded) return;
  var jsonStr = fromBase64(encoded);
  if (!jsonStr) return;
  var stored = JSON.parse(jsonStr);
  if (!stored) return;
  ENHANCEMENT_PROPS.forEach(function(p) {
    if (!userData[p] && stored[p]) userData[p] = stored[p];
  });
}

function saveEnhancementCookie(userData) {
  var toStore = {};
  ENHANCEMENT_PROPS.forEach(function(p) {
    if (userData[p]) toStore[p] = userData[p];
  });
  setCookie('_gtmeec', toBase64(JSON.stringify(toStore)), {
    domain: 'auto',
    path: '/',
    samesite: 'strict',
    secure: true,
    'max-age': 7776000,
    HttpOnly: true
  });
}

function isConsentGivenOrNotRequired() {
  if (data.marketingPermission !== 'required') return true;
  if (eventData.consent_state) return !!eventData.consent_state.ad_storage;
  var gcs = eventData['x-ga-gcs'] || '';
  return gcs[2] === '1';
}

function enc(val) {
  return encodeUriComponent(val || '');
}

function extractFbcClickId(fbcValue) {
  var parts = fbcValue.split('.');
  return parts[parts.length - 1];
}

function applyOverrides(entries, target) {
  if (entries) {
    entries.forEach(function(d) { target[d.name] = d.value; });
  }
}

function deduplicateArray(arr) {
  var seen = {};
  var result = [];
  for (var i = 0; i < arr.length; i++) {
    var key = makeString(arr[i]);
    if (!seen[key]) {
      seen[key] = true;
      result.push(arr[i]);
    }
  }
  return result;
}

function removeEmpty(obj) {
  var clean = {};
  for (var key in obj) {
    var val = obj[key];
    var valType = getType(val);
    if (valType === 'null' || valType === 'undefined' || val === '') continue;
    if (valType === 'array' && val.length === 0) continue;
    clean[key] = val;
  }
  return clean;
}

function log(obj) {
  if (!isLoggingEnabled()) return;
  obj.TraceId = getRequestHeader('trace-id');
  logToConsole(JSON.stringify(obj));
}

function isLoggingEnabled() {
  var cv = getContainerVersion();
  var isDebug = !!(cv && (cv.debugMode || cv.previewMode));
  if (!data.verbosity || data.verbosity === 'debug') return isDebug;
  if (data.verbosity === 'no') return false;
  return data.verbosity === 'always';
}


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_event_data",
        "versionId": "1"
      },
      "param": [
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "_fbc"
              },
              {
                "type": 1,
                "string": "_fbp"
              },
              {
                "type": 1,
                "string": "_gtmeec"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "set_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedCookies",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  { "type": 1, "string": "name" },
                  { "type": 1, "string": "domain" },
                  { "type": 1, "string": "path" },
                  { "type": 1, "string": "secure" },
                  { "type": 1, "string": "session" }
                ],
                "mapValue": [
                  { "type": 1, "string": "_fbc" },
                  { "type": 1, "string": "*" },
                  { "type": 1, "string": "*" },
                  { "type": 1, "string": "any" },
                  { "type": 1, "string": "any" }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  { "type": 1, "string": "name" },
                  { "type": 1, "string": "domain" },
                  { "type": 1, "string": "path" },
                  { "type": 1, "string": "secure" },
                  { "type": 1, "string": "session" }
                ],
                "mapValue": [
                  { "type": 1, "string": "_fbp" },
                  { "type": 1, "string": "*" },
                  { "type": 1, "string": "*" },
                  { "type": 1, "string": "any" },
                  { "type": 1, "string": "any" }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  { "type": 1, "string": "name" },
                  { "type": 1, "string": "domain" },
                  { "type": 1, "string": "path" },
                  { "type": 1, "string": "secure" },
                  { "type": 1, "string": "session" }
                ],
                "mapValue": [
                  { "type": 1, "string": "_gtmeec" },
                  { "type": 1, "string": "*" },
                  { "type": 1, "string": "*" },
                  { "type": 1, "string": "secure" },
                  { "type": 1, "string": "any" }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "send_http",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedUrls",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://graph.facebook.com/"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_container_data",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_request",
        "versionId": "1"
      },
      "param": [
        {
          "key": "headerWhitelist",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  { "type": 1, "string": "headerName" }
                ],
                "mapValue": [
                  { "type": 1, "string": "trace-id" }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  { "type": 1, "string": "headerName" }
                ],
                "mapValue": [
                  { "type": 1, "string": "referer" }
                ]
              }
            ]
          }
        },
        {
          "key": "headersAllowed",
          "value": {
            "type": 8,
            "boolean": true
          }
        },
        {
          "key": "requestAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "headerAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "queryParameterAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Sends PageView event with correct mapping and structure
  code: |-
    const mockData = {
      eventResolution: 'inherit',
      touchpointOrigin: 'website',
      graphApiKey: 'TEST_TOKEN_123',
      datasetId: '9876543210',
      synthesizeBrowserId: true,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: false,
      marketingPermission: 'optional',
      verbosity: 'no'
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'page_view',
        page_location: 'https://example.com/test',
        page_referrer: 'https://google.com',
        ip_override: '1.2.3.4',
        user_agent: 'TestAgent/1.0'
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });
    mock('computeEffectiveTldPlusOne', function() { return 'example.com'; });
    mock('parseUrl', function(u) { return { searchParams: {} }; });

    let sentUrl, sentBody;
    mock('sendHttpRequest', function(url, opts, body) {
      sentUrl = url;
      sentBody = body;
      return {
        then: function(cb) {
          cb({ statusCode: 200, body: '{"events_received":1}' });
          return { catch: function() {} };
        }
      };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertThat(sentUrl).contains('9876543210');
    assertThat(sentUrl).contains('TEST_TOKEN_123');
    assertThat(sentBody).contains('"event_name":"PageView"');
    assertThat(sentBody).contains('"action_source":"website"');
    assertThat(sentBody).contains('"client_ip_address":"1.2.3.4"');
    assertThat(sentBody).contains('"event_source_url":"https://example.com/test"');
    assertThat(sentBody).contains('"partner_agent":"upblue-gtmss-1.0.0"');
    assertApi('gtmOnSuccess').wasCalled();

- name: Maps GA4 purchase event with e-commerce data
  code: |-
    const mockData = {
      eventResolution: 'inherit',
      touchpointOrigin: 'website',
      graphApiKey: 'TOKEN',
      datasetId: '111222333',
      synthesizeBrowserId: false,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: false,
      marketingPermission: 'optional',
      verbosity: 'no'
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'purchase',
        page_location: 'https://shop.com/thank-you',
        ip_override: '5.6.7.8',
        user_agent: 'Mozilla/5.0',
        transaction_id: 'ORDER-001',
        value: 99.99,
        currency: 'PLN',
        items: [
          { item_id: 'SKU-1', item_name: 'Widget', price: 49.99, quantity: 2, item_category: 'Gadgets' }
        ]
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });
    mock('computeEffectiveTldPlusOne', function() { return 'shop.com'; });
    mock('parseUrl', function() { return { searchParams: {} }; });

    let sentBody;
    mock('sendHttpRequest', function(url, opts, body) {
      sentBody = body;
      return {
        then: function(cb) {
          cb({ statusCode: 200, body: '{}' });
          return { catch: function() {} };
        }
      };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertThat(sentBody).contains('"event_name":"Purchase"');
    assertThat(sentBody).contains('"event_id":"ORDER-001"');
    assertThat(sentBody).contains('"currency":"PLN"');
    assertThat(sentBody).contains('"order_id":"ORDER-001"');
    assertThat(sentBody).contains('"id":"SKU-1"');
    assertThat(sentBody).contains('"content_ids":["SKU-1"]');
    assertThat(sentBody).contains('"num_items":1');
    assertThat(sentBody).contains('"quantity":2');
    assertApi('gtmOnSuccess').wasCalled();

- name: Overrides event name when set to standard override
  code: |-
    const mockData = {
      eventResolution: 'override',
      metaEventKind: 'standard',
      predefinedEvent: 'Lead',
      touchpointOrigin: 'website',
      graphApiKey: 'TOKEN',
      datasetId: '111',
      synthesizeBrowserId: false,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: false,
      marketingPermission: 'optional',
      verbosity: 'no'
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'generate_lead',
        page_location: 'https://example.com',
        ip_override: '1.1.1.1',
        user_agent: 'Bot'
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });
    mock('computeEffectiveTldPlusOne', function() { return 'example.com'; });
    mock('parseUrl', function() { return { searchParams: {} }; });

    let sentBody;
    mock('sendHttpRequest', function(url, opts, body) {
      sentBody = body;
      return {
        then: function(cb) {
          cb({ statusCode: 200, body: '{}' });
          return { catch: function() {} };
        }
      };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertThat(sentBody).contains('"event_name":"Lead"');
    assertApi('gtmOnSuccess').wasCalled();

- name: Overrides event name when set to custom override
  code: |-
    const mockData = {
      eventResolution: 'override',
      metaEventKind: 'custom',
      freeformEventName: 'MyCustomEvent',
      touchpointOrigin: 'website',
      graphApiKey: 'TOKEN',
      datasetId: '111',
      synthesizeBrowserId: false,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: false,
      marketingPermission: 'optional',
      verbosity: 'no'
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'page_view',
        page_location: 'https://example.com',
        ip_override: '1.1.1.1',
        user_agent: 'Bot'
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });
    mock('computeEffectiveTldPlusOne', function() { return 'example.com'; });
    mock('parseUrl', function() { return { searchParams: {} }; });

    let sentBody;
    mock('sendHttpRequest', function(url, opts, body) {
      sentBody = body;
      return {
        then: function(cb) {
          cb({ statusCode: 200, body: '{}' });
          return { catch: function() {} };
        }
      };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertThat(sentBody).contains('"event_name":"MyCustomEvent"');
    assertApi('gtmOnSuccess').wasCalled();

- name: Skips select_item event (no Meta standard equivalent)
  code: |-
    const mockData = {
      eventResolution: 'inherit',
      touchpointOrigin: 'website',
      graphApiKey: 'TOKEN',
      datasetId: '111',
      synthesizeBrowserId: false,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: false,
      marketingPermission: 'optional',
      verbosity: 'no'
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'select_item',
        page_location: 'https://shop.com/category',
        ip_override: '1.2.3.4',
        user_agent: 'Mozilla/5.0',
        items: [
          { item_id: '123', item_name: 'Test', price: 10 }
        ]
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });

    let httpCalled = false;
    mock('sendHttpRequest', function() {
      httpCalled = true;
      return { then: function() { return { catch: function() {} }; } };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertThat(httpCalled).isFalse();
    assertApi('gtmOnSuccess').wasCalled();

- name: Blocks execution when consent is required but not granted
  code: |-
    const mockData = {
      eventResolution: 'inherit',
      touchpointOrigin: 'website',
      graphApiKey: 'TOKEN',
      datasetId: '111',
      synthesizeBrowserId: false,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: false,
      marketingPermission: 'required',
      verbosity: 'no'
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'page_view',
        'x-ga-gcs': 'G100'
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });

    let httpCalled = false;
    mock('sendHttpRequest', function() {
      httpCalled = true;
      return { then: function() { return { catch: function() {} }; } };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertThat(httpCalled).isFalse();
    assertApi('gtmOnSuccess').wasCalled();

- name: Allows execution when consent is required and granted
  code: |-
    const mockData = {
      eventResolution: 'inherit',
      touchpointOrigin: 'website',
      graphApiKey: 'TOKEN',
      datasetId: '111',
      synthesizeBrowserId: false,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: false,
      marketingPermission: 'required',
      verbosity: 'no'
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'page_view',
        page_location: 'https://example.com',
        ip_override: '1.1.1.1',
        user_agent: 'Bot',
        'x-ga-gcs': 'G111'
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });
    mock('computeEffectiveTldPlusOne', function() { return 'example.com'; });
    mock('parseUrl', function() { return { searchParams: {} }; });

    let httpCalled = false;
    mock('sendHttpRequest', function(url, opts, body) {
      httpCalled = true;
      return {
        then: function(cb) {
          cb({ statusCode: 200, body: '{}' });
          return { catch: function() {} };
        }
      };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertThat(httpCalled).isTrue();
    assertApi('gtmOnSuccess').wasCalled();

- name: Calls gtmOnFailure when API returns error status
  code: |-
    const mockData = {
      eventResolution: 'inherit',
      touchpointOrigin: 'website',
      graphApiKey: 'TOKEN',
      datasetId: '111',
      synthesizeBrowserId: false,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: false,
      marketingPermission: 'optional',
      verbosity: 'no'
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'page_view',
        page_location: 'https://example.com',
        ip_override: '1.1.1.1',
        user_agent: 'Bot'
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });
    mock('computeEffectiveTldPlusOne', function() { return 'example.com'; });
    mock('parseUrl', function() { return { searchParams: {} }; });

    mock('sendHttpRequest', function(url, opts, body) {
      return {
        then: function(cb) {
          cb({ statusCode: 400, body: '{"error":"invalid token"}' });
          return { catch: function() {} };
        }
      };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertApi('gtmOnFailure').wasCalled();

- name: Optimistic scenario calls gtmOnSuccess immediately regardless of API result
  code: |-
    const mockData = {
      eventResolution: 'inherit',
      touchpointOrigin: 'website',
      graphApiKey: 'TOKEN',
      datasetId: '111',
      synthesizeBrowserId: false,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: true,
      marketingPermission: 'optional',
      verbosity: 'no'
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'page_view',
        page_location: 'https://example.com',
        ip_override: '1.1.1.1',
        user_agent: 'Bot'
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });
    mock('computeEffectiveTldPlusOne', function() { return 'example.com'; });
    mock('parseUrl', function() { return { searchParams: {} }; });

    mock('sendHttpRequest', function(url, opts, body) {
      return {
        then: function(cb) {
          cb({ statusCode: 500, body: 'error' });
          return { catch: function() {} };
        }
      };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertApi('gtmOnSuccess').wasCalled();
    assertApi('gtmOnFailure').wasNotCalled();

- name: Includes test event code when provided
  code: |-
    const mockData = {
      eventResolution: 'inherit',
      touchpointOrigin: 'website',
      graphApiKey: 'TOKEN',
      datasetId: '111',
      diagnosticCode: 'TEST99',
      synthesizeBrowserId: false,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: false,
      marketingPermission: 'optional',
      verbosity: 'no'
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'page_view',
        page_location: 'https://example.com',
        ip_override: '1.1.1.1',
        user_agent: 'Bot'
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });
    mock('computeEffectiveTldPlusOne', function() { return 'example.com'; });
    mock('parseUrl', function() { return { searchParams: {} }; });

    let sentBody;
    mock('sendHttpRequest', function(url, opts, body) {
      sentBody = body;
      return {
        then: function(cb) {
          cb({ statusCode: 200, body: '{}' });
          return { catch: function() {} };
        }
      };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertThat(sentBody).contains('"test_event_code":"TEST99"');
    assertApi('gtmOnSuccess').wasCalled();

- name: Maps GA4 view_item to ViewContent with content_ids and full Meta parameters
  code: |-
    const mockData = {
      eventResolution: 'inherit',
      touchpointOrigin: 'website',
      graphApiKey: 'TOKEN',
      datasetId: '111222333',
      synthesizeBrowserId: false,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: false,
      marketingPermission: 'optional',
      verbosity: 'no'
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'view_item',
        page_location: 'https://shop.com/product/267138',
        ip_override: '1.2.3.4',
        user_agent: 'Mozilla/5.0',
        value: 59,
        currency: 'PLN',
        items: [
          { item_id: '267138', item_name: 'HULAJNOGA', price: 59, item_category: 'Dla dzieci' }
        ]
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });
    mock('computeEffectiveTldPlusOne', function() { return 'shop.com'; });
    mock('parseUrl', function() { return { searchParams: {} }; });

    let sentBody;
    mock('sendHttpRequest', function(url, opts, body) {
      sentBody = body;
      return {
        then: function(cb) {
          cb({ statusCode: 200, body: '{}' });
          return { catch: function() {} };
        }
      };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertThat(sentBody).contains('"event_name":"ViewContent"');
    assertThat(sentBody).contains('"content_ids":["267138"]');
    assertThat(sentBody).contains('"content_type":"product"');
    assertThat(sentBody).contains('"content_name":"HULAJNOGA"');
    assertThat(sentBody).contains('"content_category":"Dla dzieci"');
    assertThat(sentBody).excludes('"num_items"');
    assertThat(sentBody).contains('"currency":"PLN"');
    assertThat(sentBody).contains('"quantity":1');
    assertApi('gtmOnSuccess').wasCalled();

- name: Deduplicates content_ids when items contain repeated product IDs
  code: |-
    const mockData = {
      eventResolution: 'inherit',
      touchpointOrigin: 'website',
      graphApiKey: 'TOKEN',
      datasetId: '111',
      synthesizeBrowserId: false,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: false,
      marketingPermission: 'optional',
      verbosity: 'no'
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'purchase',
        page_location: 'https://shop.com/thank-you',
        ip_override: '1.2.3.4',
        user_agent: 'Mozilla/5.0',
        transaction_id: 'ORD-100',
        value: 150,
        currency: 'PLN',
        items: [
          { item_id: 'SKU-A', item_name: 'Product A', price: 50, quantity: 2 },
          { item_id: 'SKU-A', item_name: 'Product A', price: 50, quantity: 1 },
          { item_id: 'SKU-B', item_name: 'Product B', price: 50, quantity: 1 }
        ]
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });
    mock('computeEffectiveTldPlusOne', function() { return 'shop.com'; });
    mock('parseUrl', function() { return { searchParams: {} }; });

    let sentBody;
    mock('sendHttpRequest', function(url, opts, body) {
      sentBody = body;
      return {
        then: function(cb) {
          cb({ statusCode: 200, body: '{}' });
          return { catch: function() {} };
        }
      };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertThat(sentBody).contains('"content_ids":["SKU-A","SKU-B"]');
    assertThat(sentBody).contains('"num_items":3');
    assertApi('gtmOnSuccess').wasCalled();

- name: Applies user data and custom data overrides from UI tables
  code: |-
    const mockData = {
      eventResolution: 'inherit',
      touchpointOrigin: 'website',
      graphApiKey: 'TOKEN',
      datasetId: '111',
      synthesizeBrowserId: false,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: false,
      marketingPermission: 'optional',
      verbosity: 'no',
      identityEntries: [
        { name: 'em', value: 'test@example.com' }
      ],
      extraParamEntries: [
        { name: 'custom_field', value: 'hello' }
      ],
      eventFieldEntries: [
        { name: 'event_id', value: 'EVT-OVERRIDE-1' }
      ]
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'page_view',
        page_location: 'https://example.com',
        ip_override: '1.1.1.1',
        user_agent: 'Bot'
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });
    mock('computeEffectiveTldPlusOne', function() { return 'example.com'; });
    mock('parseUrl', function() { return { searchParams: {} }; });
    mock('sha256Sync', function(v) { return 'hashed_' + v; });

    let sentBody;
    mock('sendHttpRequest', function(url, opts, body) {
      sentBody = body;
      return {
        then: function(cb) {
          cb({ statusCode: 200, body: '{}' });
          return { catch: function() {} };
        }
      };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertThat(sentBody).contains('"em":"hashed_test@example.com"');
    assertThat(sentBody).contains('"custom_field":"hello"');
    assertThat(sentBody).contains('"event_id":"EVT-OVERRIDE-1"');
    assertApi('gtmOnSuccess').wasCalled();

- name: Maps GA4 page_view to Meta PageView
  code: |-
    const mockData = {
      eventResolution: 'inherit',
      touchpointOrigin: 'website',
      graphApiKey: 'TOKEN',
      datasetId: '111',
      synthesizeBrowserId: false,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: true,
      marketingPermission: 'optional',
      verbosity: 'no'
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'page_view',
        page_location: 'https://example.com',
        ip_override: '1.1.1.1',
        user_agent: 'Bot'
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });
    mock('computeEffectiveTldPlusOne', function() { return 'example.com'; });
    mock('parseUrl', function() { return { searchParams: {} }; });

    let sentBody;
    mock('sendHttpRequest', function(url, opts, body) {
      sentBody = body;
      return {
        then: function(cb) {
          cb({ statusCode: 200, body: '{}' });
          return { catch: function() {} };
        }
      };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertThat(sentBody).contains('"event_name":"PageView"');

- name: Maps GA4 add_to_cart to Meta AddToCart
  code: |-
    const mockData = {
      eventResolution: 'inherit',
      touchpointOrigin: 'website',
      graphApiKey: 'TOKEN',
      datasetId: '111',
      synthesizeBrowserId: false,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: true,
      marketingPermission: 'optional',
      verbosity: 'no'
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'add_to_cart',
        page_location: 'https://example.com',
        ip_override: '1.1.1.1',
        user_agent: 'Bot'
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });
    mock('computeEffectiveTldPlusOne', function() { return 'example.com'; });
    mock('parseUrl', function() { return { searchParams: {} }; });

    let sentBody;
    mock('sendHttpRequest', function(url, opts, body) {
      sentBody = body;
      return {
        then: function(cb) {
          cb({ statusCode: 200, body: '{}' });
          return { catch: function() {} };
        }
      };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertThat(sentBody).contains('"event_name":"AddToCart"');

- name: Maps GA4 begin_checkout to Meta InitiateCheckout
  code: |-
    const mockData = {
      eventResolution: 'inherit',
      touchpointOrigin: 'website',
      graphApiKey: 'TOKEN',
      datasetId: '111',
      synthesizeBrowserId: false,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: true,
      marketingPermission: 'optional',
      verbosity: 'no'
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'begin_checkout',
        page_location: 'https://example.com',
        ip_override: '1.1.1.1',
        user_agent: 'Bot'
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });
    mock('computeEffectiveTldPlusOne', function() { return 'example.com'; });
    mock('parseUrl', function() { return { searchParams: {} }; });

    let sentBody;
    mock('sendHttpRequest', function(url, opts, body) {
      sentBody = body;
      return {
        then: function(cb) {
          cb({ statusCode: 200, body: '{}' });
          return { catch: function() {} };
        }
      };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertThat(sentBody).contains('"event_name":"InitiateCheckout"');

- name: Passes through unknown event names unchanged
  code: |-
    const mockData = {
      eventResolution: 'inherit',
      touchpointOrigin: 'website',
      graphApiKey: 'TOKEN',
      datasetId: '111',
      synthesizeBrowserId: false,
      restrictCookieAccess: false,
      enrichWithStoredData: false,
      respondBeforeApi: true,
      marketingPermission: 'optional',
      verbosity: 'no'
    };

    mock('getAllEventData', function() {
      return {
        event_name: 'some_custom_ga4_event',
        page_location: 'https://example.com',
        ip_override: '1.1.1.1',
        user_agent: 'Bot'
      };
    });

    mock('getCookieValues', function() { return []; });
    mock('getRequestHeader', function() { return ''; });
    mock('getTimestampMillis', function() { return 1700000000000; });
    mock('getContainerVersion', function() { return {}; });
    mock('computeEffectiveTldPlusOne', function() { return 'example.com'; });
    mock('parseUrl', function() { return { searchParams: {} }; });

    let sentBody;
    mock('sendHttpRequest', function(url, opts, body) {
      sentBody = body;
      return {
        then: function(cb) {
          cb({ statusCode: 200, body: '{}' });
          return { catch: function() {} };
        }
      };
    });

    mock('setCookie', function() {});

    runCode(mockData);

    assertThat(sentBody).contains('"event_name":"some_custom_ga4_event"');
