CREATE TABLE email_addresses_backup AS select * from email_addresses;
DROP tables email_addresses;
CREATE TABLE roles_managed_roles_backup AS select * from roles_managed_roles;
DROP table roles_managed_roles;
CREATE TABLE imports_backup AS select * from imports;
DROP table import_items;
CREATE TABLE custom_field_enumerations_backup AS select * from custom_field_enumerations;
DROP table custom_field_enumerations;
