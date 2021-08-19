IF(EXIST(SELECT COUNT(*) FROM bitnami_redmine.tables WHERE table_schema = 'bitnami_redmine' AND table_name = 'email_addresses'))
CREATE TABLE email_addresses_backup AS select * from email_addresses;
DROP TABLEs email_addresses;
CREATE TABLE roles_managed_roles_backup AS select * from roles_managed_roles;
DROP TABLE roles_managed_roles;
CREATE TABLE imports_backup AS select * from imports;
DROP TABLE import_items;
CREATE TABLE import_items_backup AS select * from import_items;
DROP TABLE import_items;
CREATE TABLE custom_field_enumerations_backup AS select * from custom_field_enumerations;
DROP TABLE custom_field_enumerations;
