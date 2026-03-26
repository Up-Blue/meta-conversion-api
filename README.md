  # Meta Conversion API Tag by Up Blue

  Server-side tag for Google Tag Manager that sends event data from GA4/Web clients to the Meta (Facebook) Conversions API.

  ## Installation

  1. In server-side Google Tag Manager, go to **Templates** > **Search Gallery**
  2. Search for **Meta Conversion API Tag by Up Blue**
  3. Click **Add to workspace**
  4. Create a new tag using this template

  ## Configuration

  ### Required fields

  | Field | Description |
  |-------|-------------|
  | **API Access Token** | Your Meta Conversions API access token. Generated in Meta Events Manager. |
  | **Meta Pixel ID** | Your Meta (Facebook) Pixel ID (digits only). |

  ### Event setup

  | Field | Description |
  |-------|-------------|
  | **Event Name Setup** | **Inherit from client** (automatic GA4 mapping) or **Override** (manual selection). |
  | **Action Source** | Channel where the event occurred: Website (default), Email, App, Phone Call, Chat, Physical Store, etc. |
  | **Test Event Code** | Optional code for validating events in Meta Events Manager's Test Events tab. |

  ### Cookie and enhancement options

  | Field | Description |
  |-------|-------------|
  | **Generate _fbp cookie** | Creates the _fbp browser ID cookie if it doesn't exist (enabled by default). |
  | **Use HttpOnly cookies** | Prevents JavaScript from accessing _fbp/_fbc cookies. |
  | **Enable Event Enhancement** | Stores user data in a secure cookie to enrich future events (enabled by default). |
  | **Use Optimistic Scenario** | Tag reports success without waiting for Meta API response. |

  ### User data

  Configure user data parameters for Event Match Quality (EMQ). Supported fields:

  - **Contact:** Email, Phone
  - **Personal:** Gender, Date of Birth, First Name, Last Name
  - **Address:** City, State, Zip Code, Country
  - **Identifiers:** External ID, Client IP, User Agent, Click ID (_fbc), Browser ID (_fbp), Subscription ID, Lead ID, FB Login ID

  All PII fields are automatically hashed (SHA-256) before being sent to Meta. Pre-hashed values are also accepted.

  ### Custom data

  Key-value table for additional data parameters sent with the event.

  ### Consent settings

  | Option | Description |
  |--------|-------------|
  | **Send data always** | Events are always sent (default). |
  | **Send only when ad_storage granted** | Respects Google Consent Mode — events fire only when ad_storage consent is granted. |

  ### Logging

  | Option | Description |
  |--------|-------------|
  | **Do not log** | No logging. |
  | **Log during debug/preview** | Logs request/response details in preview mode (default). |
  | **Always log** | Logs all requests to console. |

  ## Supported event mappings (automatic mode)

  When using **Inherit from client**, the tag automatically maps GA4 events to Meta standard events:

  | GA4 Event | Meta Standard Event |
  |-----------|---------------------|
  | `page_view` / `gtm.dom` | PageView |
  | `add_payment_info` | AddPaymentInfo |
  | `add_to_cart` | AddToCart |
  | `add_to_wishlist` | AddToWishlist |
  | `sign_up` | CompleteRegistration |
  | `begin_checkout` | InitiateCheckout |
  | `generate_lead` | Lead |
  | `purchase` | Purchase |
  | `search` | Search |
  | `view_item` | ViewContent |
  | `contact` | Contact |
  | `customize_product` | CustomizeProduct |
  | `donate` | Donate |
  | `find_location` | FindLocation |
  | `schedule` | Schedule |
  | `start_trial` | StartTrial |
  | `submit_application` | SubmitApplication |
  | `subscribe` | Subscribe |

  GTM4WP (WooCommerce) events are also supported.

  ### Events skipped in automatic mode

  `view_item_list`, `select_item`, `select_promotion`, `view_promotion`, `view_cart`, `remove_from_cart`, `add_shipping_info`, `refund`, `user_engagement`, `scroll`, `form_start`, `form_submit`, `first_visit`,
   `session_start`, `click`

  ## E-commerce data

  The tag automatically extracts e-commerce data from GA4 event format:

  - **Content IDs** — from `items[].item_id`, deduplicated
  - **Content Name / Category / Brand** — from item-level fields
  - **Value** and **Currency** — from event-level fields
  - **Num Items** — for InitiateCheckout and Purchase events
  - **Transaction ID** — mapped to Meta's `order_id`
  - **Search String** — from `search_term`

  ## Deduplication

  The tag automatically generates an Event ID for deduplication between browser Pixel and server-side Conversions API. It uses `transaction_id`, `event_id`, or a synthesized timestamp-based ID.

  ## License

  Apache License 2.0 — see [LICENSE](LICENSE) for details.

  ## Author

  Built and maintained by [Up Blue](https://www.upblue.pl/).
