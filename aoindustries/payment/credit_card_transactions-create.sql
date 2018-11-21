create sequence         payment.credit_card_transactions_pkey_seq cycle;
grant all            on payment.credit_card_transactions_pkey_seq to aoadmin;
grant select, update on payment.credit_card_transactions_pkey_seq to aoserv_app;

create table credit_card_transactions (
  pkey integer
    default nextval('payment.credit_card_transactions_pkey_seq')
    primary key,
  processor_id text not null,
  accounting text not null,
  group_name text,
  test_mode boolean not null,
  duplicate_window integer not null,
  order_number text,
  currency_code text not null,
  amount numeric(9,2) not null,
  tax_amount numeric(9,2),
  tax_exempt boolean not null,
  shipping_amount numeric(9,2),
  duty_amount numeric(9,2),
  shipping_first_name text,
  shipping_last_name text,
  shipping_company_name text,
  shipping_street_address1 text,
  shipping_street_address2 text,
  shipping_city text,
  shipping_state text,
  shipping_postal_code text,
  shipping_country_code character(2),
  email_customer boolean not null,
  merchant_email text,
  invoice_number text,
  purchase_order_number text,
  description text,
  credit_card_created_by text not null,
  credit_card_principal_name text,
  credit_card_accounting text not null,
  credit_card_group_name text,
  credit_card_provider_unique_id text,
  credit_card_masked_card_number text not null,
  credit_card_first_name text not null,
  credit_card_last_name text not null,
  credit_card_company_name text,
  credit_card_email text,
  credit_card_phone text,
  credit_card_fax text,
  credit_card_customer_tax_id text,
  credit_card_street_address1 text not null,
  credit_card_street_address2 text,
  credit_card_city text not null,
  credit_card_state text,
  credit_card_postal_code text,
  credit_card_country_code character(2) not null,
  credit_card_comments text,
  authorization_time timestamp with time zone not null,
  authorization_username text not null,
  authorization_principal_name text,
  authorization_communication_result text,
  authorization_provider_error_code text,
  authorization_error_code text,
  authorization_provider_error_message text,
  authorization_provider_unique_id text,
  authorization_provider_approval_result text,
  authorization_approval_result text,
  authorization_provider_decline_reason text,
  authorization_decline_reason text,
  authorization_provider_review_reason text,
  authorization_review_reason text,
  authorization_provider_cvv_result text,
  authorization_cvv_result text,
  authorization_provider_avs_result text,
  authorization_avs_result text,
  authorization_approval_code text,
  capture_time timestamp with time zone,
  capture_username text,
  capture_principal_name text,
  capture_communication_result text,
  capture_provider_error_code text,
  capture_error_code text,
  capture_provider_error_message text,
  capture_provider_unique_id text,
  void_time timestamp with time zone,
  void_username text,
  void_principal_name text,
  void_communication_result text,
  void_provider_error_code text,
  void_error_code text,
  void_provider_error_message text,
  void_provider_unique_id text,
  status text not null,
  unique(processor_id, authorization_provider_unique_id),
  unique(processor_id, capture_provider_unique_id),
  unique(processor_id, void_provider_unique_id)
);
grant all                    on credit_card_transactions to aoadmin;
grant select, insert, update on credit_card_transactions to aoserv_app;
