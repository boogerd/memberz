# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_07_124501) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "number"
    t.string "description"
    t.string "account_type"
    t.string "status"
    t.bigint "organisation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organisation_id"], name: "index_accounts_on_organisation_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.string "address_line"
    t.string "postal_code"
    t.string "place"
    t.string "address_type"
    t.boolean "default_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "addressable_type", null: false
    t.bigint "addressable_id", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable"
  end

  create_table "bank_accounts", force: :cascade do |t|
    t.string "name"
    t.string "account_number"
    t.string "iban"
    t.string "swift"
    t.boolean "default_account"
    t.string "collection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "bankaccountable_type", null: false
    t.bigint "bankaccountable_id", null: false
    t.index ["bankaccountable_type", "bankaccountable_id"], name: "index_bank_accounts_on_bankaccountable"
  end

  create_table "budgets", force: :cascade do |t|
    t.bigint "account_id", null: false
    t.bigint "period_id", null: false
    t.bigint "organisation_id", null: false
    t.float "amount"
    t.string "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_budgets_on_account_id"
    t.index ["organisation_id"], name: "index_budgets_on_organisation_id"
    t.index ["period_id"], name: "index_budgets_on_period_id"
  end

  create_table "invoice_details", force: :cascade do |t|
    t.decimal "quantity"
    t.string "description"
    t.decimal "unit_price"
    t.decimal "net_amount"
    t.decimal "vat_amount"
    t.decimal "gross_amount"
    t.bigint "invoice_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_invoice_details_on_invoice_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "invoice_number"
    t.date "invoice_date"
    t.date "due_date"
    t.bigint "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "quantity"
    t.float "price"
    t.string "description"
    t.float "total"
    t.index ["member_id"], name: "index_invoices_on_member_id"
  end

  create_table "mandates", force: :cascade do |t|
    t.string "mandate_code"
    t.date "mandate_date"
    t.bigint "member_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_mandates_on_member_id"
  end

  create_table "member_groups", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "organisation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "price"
    t.index ["organisation_id"], name: "index_member_groups_on_organisation_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "salutation"
    t.string "first_name"
    t.string "last_name"
    t.date "birtday"
    t.string "email"
    t.string "phone"
    t.string "mobile"
    t.date "start_date"
    t.bigint "organisation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "end_date"
    t.string "street"
    t.string "postal_code"
    t.string "place"
    t.boolean "direct_debit"
    t.string "iban"
    t.string "mandate_code"
    t.date "mandate_date"
    t.string "account_holder"
    t.integer "terms"
    t.string "name"
    t.bigint "member_group_id", null: false
    t.index ["member_group_id"], name: "index_members_on_member_group_id"
    t.index ["organisation_id"], name: "index_members_on_organisation_id"
  end

  create_table "membership_types", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.float "price"
    t.bigint "organisation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organisation_id"], name: "index_membership_types_on_organisation_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.bigint "member_id", null: false
    t.bigint "membership_type_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.date "renewal_date"
    t.string "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_memberships_on_member_id"
    t.index ["membership_type_id"], name: "index_memberships_on_membership_type_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.string "name"
    t.string "vat_number"
    t.string "coc_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "street"
    t.string "postal_code"
    t.string "place"
    t.string "email"
    t.string "phone"
    t.string "iban"
    t.string "mandate_contract_no"
  end

  create_table "periods", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "organisation_id", null: false
    t.string "status"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organisation_id"], name: "index_periods_on_organisation_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.date "transaction_date"
    t.string "transaction_number"
    t.float "transaction_amount"
    t.string "description"
    t.bigint "account_id", null: false
    t.bigint "organisation_id", null: false
    t.text "transaction_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "iban"
    t.string "counter_iban"
    t.string "transaction_code"
    t.string "transaction_type"
    t.float "balance"
    t.index ["account_id"], name: "index_transactions_on_account_id"
    t.index ["organisation_id"], name: "index_transactions_on_organisation_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accounts", "organisations"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "budgets", "accounts"
  add_foreign_key "budgets", "organisations"
  add_foreign_key "budgets", "periods"
  add_foreign_key "invoice_details", "invoices"
  add_foreign_key "invoices", "members"
  add_foreign_key "mandates", "members"
  add_foreign_key "member_groups", "organisations"
  add_foreign_key "members", "member_groups"
  add_foreign_key "members", "organisations"
  add_foreign_key "membership_types", "organisations"
  add_foreign_key "memberships", "members"
  add_foreign_key "memberships", "membership_types"
  add_foreign_key "periods", "organisations"
  add_foreign_key "transactions", "accounts"
  add_foreign_key "transactions", "organisations"
end
