# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180514001129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "ag_addresses", force: :cascade do |t|
    t.string "project_name"
    t.string "street_name"
    t.string "city"
    t.string "zip_code"
    t.bigint "ag_country_id"
    t.bigint "ag_state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ag_country_id"], name: "index_ag_addresses_on_ag_country_id"
    t.index ["ag_state_id"], name: "index_ag_addresses_on_ag_state_id"
  end

  create_table "ag_apartments", force: :cascade do |t|
    t.integer "unit_num"
    t.integer "num_bedrooms"
    t.integer "num_bathrooms"
    t.boolean "has_kitchen"
    t.boolean "has_living_room"
    t.float "sq_footage"
    t.bigint "ag_public_housing_devel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ag_public_housing_devel_id"], name: "index_ag_apartments_on_ag_public_housing_devel_id"
  end

  create_table "ag_app_use_type", id: false, force: :cascade do |t|
    t.string "applicant", limit: 30
    t.string "fname", limit: 20
    t.string "new_fname", limit: 20
    t.string "new_app", limit: 30
    t.string "existuse", limit: 25
    t.text "agroup"
  end

  create_table "ag_countries", force: :cascade do |t|
    t.string "name"
    t.string "iso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ag_holdsales4", id: false, force: :cascade do |t|
    t.text "parcel_id"
    t.string "base_id", limit: 7
    t.decimal "avg_price"
    t.bigint "scount"
  end

  create_table "ag_holdsales6", id: false, force: :cascade do |t|
    t.text "parcel_id"
    t.string "base_id", limit: 7
    t.decimal "avg_price"
    t.bigint "scount"
  end

  create_table "ag_household_apartments", force: :cascade do |t|
    t.date "moved_id"
    t.date "moved_out"
    t.float "cost"
    t.bigint "ag_apartment_id"
    t.bigint "ag_household_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ag_apartment_id"], name: "index_ag_household_apartments_on_ag_apartment_id"
    t.index ["ag_household_id"], name: "index_ag_household_apartments_on_ag_household_id"
  end

  create_table "ag_household_members", force: :cascade do |t|
    t.boolean "head"
    t.bigint "ag_household_id"
    t.bigint "ag_resident_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ag_household_id"], name: "index_ag_household_members_on_ag_household_id"
    t.index ["ag_resident_id"], name: "index_ag_household_members_on_ag_resident_id"
  end

  create_table "ag_households", force: :cascade do |t|
    t.boolean "owned"
    t.boolean "subsidized"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ag_own_lu_type", id: false, force: :cascade do |t|
    t.string "owner_fy05", limit: 45
    t.string "new_owner", limit: 45
    t.string "lu", limit: 255
    t.text "otype"
    t.text "agroup"
  end

  create_table "ag_public_housing_devels", force: :cascade do |t|
    t.string "name"
    t.datetime "open_date"
    t.integer "height"
    t.datetime "last_renov_date"
    t.bigint "ag_address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ag_address_id"], name: "index_ag_public_housing_devels_on_ag_address_id"
  end

  create_table "ag_residents", force: :cascade do |t|
    t.string "name"
    t.date "dob"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ag_states", force: :cascade do |t|
    t.string "name"
    t.string "iso"
    t.bigint "ag_country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ag_country_id"], name: "index_ag_states_on_ag_country_id"
  end

# Could not dump table "aj_combotype" because of following StandardError
#   Unknown type 'unknown' for column 'int_combotype'

  create_table "aj_owntype", id: false, force: :cascade do |t|
    t.string "owner", limit: 45
    t.text "int_ownertype"
  end

  create_table "aj_resizone", id: false, force: :cascade do |t|
    t.string "parcelid", limit: 10
    t.text "int_usetype"
    t.string "block", limit: 16
    t.integer "mostly_resi", limit: 2
  end

  create_table "aj_usetype", id: false, force: :cascade do |t|
    t.string "lu_id", limit: 3
    t.string "lu_categoryid", limit: 2
    t.string "lu_category", limit: 22
    t.text "int_usetype"
  end

  create_table "angiejo_lonlat5", id: false, force: :cascade do |t|
    t.string "casenumber", limit: 5
    t.float "longitude"
    t.float "latitude"
    t.string "streetname", limit: 20
    t.decimal "quality", precision: 10
  end

  create_table "ap_holdsales2", id: false, force: :cascade do |t|
    t.text "year"
    t.bigint "count"
  end

  create_table "ap_holdsales4", id: false, force: :cascade do |t|
    t.text "parcel_id"
    t.string "base_id", limit: 7
    t.decimal "avg_price"
    t.bigint "scount"
  end

  create_table "ap_household", primary_key: "householdid", id: :string, limit: 10, force: :cascade do |t|
    t.string "membername", limit: 40
    t.date "dob"
    t.text "sex"
    t.boolean "head"
  end

  create_table "ap_housing", primary_key: "housingid", id: :integer, default: nil, force: :cascade do |t|
    t.string "housingname", limit: 40
    t.integer "yearopen"
    t.integer "height"
    t.integer "yearrenov"
  end

  create_table "ap_match", id: false, force: :cascade do |t|
    t.integer "unitid"
    t.string "householdid", limit: 10
    t.integer "year"
  end

  create_table "ap_psetb", id: false, force: :cascade do |t|
    t.string "pid", limit: 40
    t.string "owner", limit: 40
    t.string "landuse", limit: 2
    t.string "newowner", limit: 40
    t.string "ownertype", limit: 40
    t.string "block", limit: 20
    t.string "blockres", limit: 5
  end

  create_table "ap_saleyear", id: false, force: :cascade do |t|
    t.text "year"
    t.bigint "count"
  end

  create_table "ap_unit", primary_key: "unitid", id: :integer, default: nil, force: :cascade do |t|
    t.integer "housingid"
    t.integer "bedroom"
    t.integer "bathroom"
    t.boolean "kitchenorlr"
  end

  create_table "ap_wpd", id: false, force: :cascade do |t|
    t.string "pid", limit: 10
    t.string "wpd", limit: 16
    t.text "substr"
  end

  create_table "authors", id: false, force: :cascade do |t|
    t.string "LASTNAME", limit: 25
    t.string "FNAMEMI", limit: 15
    t.decimal "PAPER", precision: 10
  end

  create_table "cherita_bldg", primary_key: "bldgid", id: :string, limit: 9, force: :cascade do |t|
    t.string "bldgname", limit: 10
    t.string "st_num", limit: 10
    t.string "st_name", limit: 40
    t.string "zip", limit: 15
    t.string "yrblt", limit: 4
    t.integer "flrs"
    t.string "lastreno", limit: 40
  end

  create_table "cherita_tenant", primary_key: ["headkey", "tnum"], force: :cascade do |t|
    t.string "headkey", limit: 20, null: false
    t.string "tnum", limit: 10, null: false
    t.string "lname", limit: 50
    t.string "fname", limit: 50
    t.string "sepkit", limit: 3
  end

  create_table "cherita_tenunit", primary_key: ["headkey", "unitid"], force: :cascade do |t|
    t.string "headkey", limit: 20, null: false
    t.string "unitid", limit: 20, null: false
    t.date "moveindate"
    t.string "currentyn", limit: 1
    t.date "moveoutdate"
  end

  create_table "cherita_unit", primary_key: "unitid", id: :string, limit: 10, force: :cascade do |t|
    t.string "unitnum", limit: 10
    t.integer "bed"
    t.integer "bath"
    t.string "sepkit", limit: 3
    t.float "sqft"
  end

  create_table "chernbrhd", id: false, force: :cascade do |t|
    t.decimal "neighbrhd", precision: 5
    t.bigint "variances"
    t.integer "dec_unk"
    t.integer "dec_1"
    t.integer "dec_2"
    t.integer "dec_3"
    t.integer "dec_4"
    t.integer "dec_5"
  end

  create_table "cherp", id: false, force: :cascade do |t|
    t.decimal "nsa_code", precision: 10
    t.text "nsa_area"
    t.text "nsa_subarea"
    t.bigint "novar"
  end

  create_table "holdz", id: false, force: :cascade do |t|
    t.string "casenumber", limit: 5
    t.string "hringdate", limit: 8
    t.string "applicant", limit: 30
    t.string "fname", limit: 20
    t.decimal "strtnumber", precision: 10
    t.string "strtprefix", limit: 8
    t.string "streetname", limit: 20
    t.string "streettype", limit: 8
    t.decimal "neighbrhd", precision: 5
    t.decimal "subnghbrhd", precision: 5
    t.decimal "ward", precision: 5
    t.decimal "precinct", precision: 5
    t.string "censustrac", limit: 8
    t.decimal "censusblk", precision: 10
    t.decimal "parcelnumb", precision: 10
    t.string "existzonin", limit: 10
    t.decimal "estcost", precision: 10
    t.decimal "existuse", precision: 5
    t.decimal "prpseduse", precision: 5
    t.decimal "chngeoccup", precision: 5
    t.decimal "chngeuse", precision: 5
    t.decimal "addition", precision: 5
    t.decimal "erectstruc", precision: 5
    t.decimal "erectauxil", precision: 5
    t.decimal "legalize", precision: 5
    t.decimal "subdivisio", precision: 5
    t.decimal "parking", precision: 5
    t.decimal "miscpurpos", precision: 5
    t.decimal "existunits", precision: 10
    t.decimal "prpsdunits", precision: 10
    t.decimal "existsqft", precision: 10
    t.decimal "prpsdsqft", precision: 10
    t.decimal "useitem1", precision: 5
    t.decimal "ui1", precision: 5
    t.decimal "useitem2", precision: 5
    t.decimal "ui2", precision: 5
    t.decimal "useitem3", precision: 5
    t.decimal "ui3", precision: 5
    t.decimal "variance74", precision: 5
    t.decimal "nonconf91", precision: 5
    t.decimal "nonconf92", precision: 5
    t.decimal "offpkg101", precision: 5
    t.decimal "lotsze141", precision: 5
    t.decimal "lotsze142", precision: 5
    t.decimal "lotsze143", precision: 5
    t.decimal "lotsze144", precision: 5
    t.decimal "far151", precision: 5
    t.decimal "height161", precision: 5
    t.decimal "roof168", precision: 5
    t.decimal "ospace171", precision: 5
    t.decimal "fyard181", precision: 5
    t.decimal "syard191", precision: 5
    t.decimal "ryard201", precision: 5
    t.decimal "setback211", precision: 5
    t.decimal "offpkg231", precision: 5
    t.decimal "offload241", precision: 5
    t.decimal "ipod", precision: 5
    t.decimal "otherviola", precision: 5
    t.decimal "designrev", precision: 5
    t.decimal "dscompletd", precision: 5
    t.decimal "brarecom", precision: 5
    t.decimal "boarddecis", precision: 5
  end

  create_table "hy_developments", primary_key: "devid", id: :decimal, precision: 3, force: :cascade do |t|
    t.string "devname", limit: 20
    t.string "location", limit: 20
    t.decimal "height", precision: 3
    t.date "open_date"
    t.date "reno_date"
  end

  create_table "hy_holdsales4_v5", id: false, force: :cascade do |t|
    t.string "parcel_id", limit: 10
    t.string "base_id", limit: 7
    t.decimal "avg_price"
    t.bigint "scount"
  end

  create_table "hy_households", primary_key: "hhid", id: :decimal, precision: 9, force: :cascade do |t|
  end

  create_table "hy_move", id: false, force: :cascade do |t|
    t.decimal "household", precision: 9
    t.date "move_date"
    t.decimal "outof_unit", precision: 5
    t.decimal "into_unit", precision: 5
  end

  create_table "hy_multimatch_96parcel", id: false, force: :cascade do |t|
    t.string "pid_long96", limit: 10
    t.bigint "num_of_matches"
  end

  create_table "hy_owner_property_v3", id: false, force: :cascade do |t|
    t.string "owner_fy05", limit: 45
    t.string "pid", limit: 10
    t.string "lu", limit: 2
    t.text "newlu"
    t.text "owner_type"
  end

  create_table "hy_parcel_tag", id: false, force: :cascade do |t|
    t.string "pid", limit: 10
    t.string "wpd", limit: 16
    t.integer "in_res_block"
  end

  create_table "hy_residents", primary_key: "resid", id: :decimal, precision: 9, force: :cascade do |t|
    t.decimal "family", precision: 9
    t.string "fname", limit: 20
    t.string "lname", limit: 20
    t.date "birth"
    t.string "sex", limit: 6
    t.decimal "head", precision: 1
  end

  create_table "hy_units", primary_key: "unitid", id: :decimal, precision: 5, force: :cascade do |t|
    t.decimal "development", precision: 3
    t.decimal "bed_num", precision: 1
    t.decimal "bath_num", precision: 1
    t.decimal "sep_kitchen", precision: 1
    t.decimal "sep_living", precision: 1
    t.decimal "sqft", precision: 9
  end

  create_table "jf_lonlat5", id: false, force: :cascade do |t|
    t.string "casenumber", limit: 5
    t.float "longitude"
    t.float "latitude"
    t.string "streetname", limit: 20
    t.decimal "quality", precision: 10
  end

  create_table "kd_hh2unit", id: false, force: :cascade do |t|
    t.string "unit_id", limit: 3
    t.string "hh_id", limit: 3
    t.date "movein_date"
    t.date "moveout_date"
  end

  create_table "kd_holdsales2", id: false, force: :cascade do |t|
    t.string "base_id", limit: 7
    t.decimal "saleprice"
    t.bigint "sales"
  end

  create_table "kd_hous_devs", primary_key: "dev_id", id: :string, limit: 3, force: :cascade do |t|
    t.string "name", limit: 20
    t.decimal "srt_num", precision: 10
    t.string "srt_name", limit: 20
    t.string "zip", limit: 5
    t.decimal "year_open", precision: 4
    t.decimal "num_flrs", precision: 2
    t.decimal "last_reno", precision: 4
  end

  create_table "kd_households", primary_key: "hh_id", id: :string, limit: 3, force: :cascade do |t|
  end

  create_table "kd_parctype", id: false, force: :cascade do |t|
    t.string "owner_fy05", limit: 45
    t.string "ptype", limit: 3
    t.string "lu", limit: 2
    t.string "owner", limit: 45
    t.string "parcelid", limit: 1
  end

  create_table "kd_parctype2", id: false, force: :cascade do |t|
    t.string "owner_fy05", limit: 45
    t.string "pid", limit: 10
    t.string "wpd", limit: 16
    t.string "ptype", limit: 3
    t.string "lu", limit: 2
    t.string "owner", limit: 45
    t.string "high_res", limit: 1
  end

  create_table "kd_parctype3", id: false, force: :cascade do |t|
    t.string "owner_fy05", limit: 45
    t.string "pid", limit: 10
    t.string "wpd", limit: 16
    t.string "ptype", limit: 3
    t.string "lu", limit: 2
    t.string "owner", limit: 45
    t.string "high_residential", limit: 1
  end

  create_table "kd_tenants", primary_key: "tenant_id", id: :string, limit: 9, force: :cascade do |t|
    t.string "hh_id", limit: 3
    t.string "fname", limit: 20
    t.string "lname", limit: 20
    t.date "dob"
    t.string "sex", limit: 1
    t.boolean "househead"
  end

  create_table "kd_units", primary_key: "unit_id", id: :string, limit: 3, force: :cascade do |t|
    t.decimal "num_bed", precision: 1
    t.decimal "num_bath", precision: 1
    t.boolean "sep_kit"
    t.decimal "sqft", precision: 5
    t.string "dev_id", limit: 3
  end

  create_table "keywords", id: false, force: :cascade do |t|
    t.decimal "CODE", precision: 10
    t.string "KEYWORD", limit: 45
    t.decimal "MAJOR", precision: 10
    t.string "CATEGORY", limit: 20
  end

  create_table "lu_temp", id: false, force: :cascade do |t|
    t.string "code", limit: 5
    t.string "lu_type", limit: 255
  end

  create_table "match", id: false, force: :cascade do |t|
    t.decimal "CODE", precision: 10
    t.decimal "MAJOR", precision: 10
    t.decimal "PAPER", precision: 10
  end

  create_table "matown2000", id: false, force: :cascade do |t|
    t.integer "objectid"
    t.float "area"
    t.float "perimeter"
    t.float "towns_"
    t.float "towns_id"
    t.float "town_id"
    t.string "town", limit: 21
    t.integer "fips_stco", limit: 2
    t.string "ccd_mcd", limit: 3
    t.string "fips_place", limit: 5
    t.integer "pop80"
    t.integer "pop90"
    t.integer "island", limit: 2
    t.float "pop_ch"
    t.integer "fips_mcd"
    t.integer "fips_count", limit: 2
  end

  create_table "mcpcombo", id: false, force: :cascade do |t|
    t.string "parcel"
    t.string "owner"
    t.string "combo"
  end

  create_table "mcpluot", id: false, force: :cascade do |t|
    t.string "owner_fy05", limit: 40
    t.string "lu", limit: 30
    t.string "newowner", limit: 40
    t.string "ownertype", limit: 30
    t.string "luot", limit: 30
    t.index ["owner_fy05", "lu"], name: "app"
  end

  create_table "mcpluot2", id: false, force: :cascade do |t|
    t.string "pid", limit: 40
    t.string "owner_fy05", limit: 40
    t.string "lu", limit: 30
    t.string "agroup", limit: 30
  end

  create_table "mcpot", id: false, force: :cascade do |t|
    t.string "pid", limit: 40
    t.string "wpb", limit: 40
    t.string "owner_fy05", limit: 40
    t.string "agroup", limit: 30
    t.string "lu", limit: 30
    t.string "lugroup", limit: 30
    t.string "num_floors", limit: 30
    t.string "alugroup", limit: 30
    t.string "rb23"
    t.string "rb23tot"
    t.string "rb23frac"
  end

  create_table "mcpq41", id: false, force: :cascade do |t|
    t.string "alugroup", limit: 30
    t.bigint "parcels"
    t.bigint "trip_no"
    t.bigint "res_no"
    t.float "perc_trip"
    t.float "perc_res"
  end

  create_table "mcpres23", id: false, force: :cascade do |t|
    t.string "wpb", limit: 40
    t.float "per_res"
    t.bigint "totcount"
  end

  create_table "mcpwoln", id: false, force: :cascade do |t|
    t.string "pid", limit: 10
    t.string "wpd", limit: 16
    t.string "owner_fy05", limit: 45
    t.string "lu", limit: 2
    t.string "num_floors", limit: 6
  end

  create_table "mcres23", id: false, force: :cascade do |t|
    t.string "wpb", limit: 40
    t.float "per_res"
  end

  create_table "mt_complexes", primary_key: "cpx_name", id: :text, force: :cascade do |t|
    t.text "location"
    t.integer "opening"
    t.integer "height"
    t.integer "renovation"
  end

  create_table "mt_holdsales2", id: false, force: :cascade do |t|
    t.string "base_id", limit: 7
    t.decimal "saleprice"
    t.bigint "sales"
  end

  create_table "mt_holdsales3b", id: false, force: :cascade do |t|
    t.text "parcel_id"
    t.string "base_id", limit: 7
    t.decimal "avg_price"
    t.bigint "scount"
  end

  create_table "mt_holdsales4table", id: false, force: :cascade do |t|
    t.text "parcel_id"
    t.string "base_id", limit: 7
    t.decimal "avg_price"
    t.bigint "scount"
  end

  create_table "mt_households", id: :integer, default: nil, force: :cascade do |t|
    t.text "households"
    t.text "fname"
    t.date "dob"
    t.text "sex"
    t.boolean "head"
  end

  create_table "mt_lookup", id: false, force: :cascade do |t|
    t.string "pid", limit: 10
    t.string "owner_fy05", limit: 45
    t.string "ptype", limit: 3
    t.string "lu", limit: 2
    t.text "own_type"
    t.text "prop_type"
    t.text "res_block"
  end

  create_table "mt_moves", id: false, force: :cascade do |t|
    t.integer "head"
    t.text "household"
    t.text "move_to"
    t.text "move_from"
    t.date "date"
  end

  create_table "mt_units", primary_key: "unit", id: :text, force: :cascade do |t|
    t.text "cpx_name"
    t.integer "bd_count"
    t.boolean "separate"
    t.integer "sqft"
  end

  create_table "nj_apt", primary_key: "aptno", id: :string, limit: 20, force: :cascade do |t|
    t.string "nmbuilding", limit: 20
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.string "kitchen", limit: 20
    t.string "livroom", limit: 20
    t.integer "area"
  end

  create_table "nj_condosales_arms", id: false, force: :cascade do |t|
    t.text "parcel_id"
    t.string "base_id", limit: 7
    t.decimal "avg_price"
    t.bigint "scount"
  end

  create_table "nj_developments", primary_key: "name", id: :string, limit: 20, force: :cascade do |t|
    t.string "location", limit: 20
    t.date "yearbuilt"
    t.integer "stories"
    t.date "renovdate"
    t.integer "unitno"
  end

  create_table "nj_holdsalesnj", id: false, force: :cascade do |t|
    t.string "base_id", limit: 7
    t.decimal "saleprice"
    t.bigint "sales"
  end

  create_table "nj_holdsalesnj1", id: false, force: :cascade do |t|
    t.string "base_id", limit: 7
    t.decimal "saleprice"
    t.bigint "sales"
  end

  create_table "nj_holdsalesnj3", id: false, force: :cascade do |t|
    t.text "parcel_id"
    t.string "base_id", limit: 7
    t.decimal "avg_price"
    t.bigint "scount"
  end

  create_table "nj_holdsalesnj6", id: false, force: :cascade do |t|
    t.text "parcel_id"
    t.string "base_id", limit: 7
    t.decimal "avg_price"
    t.bigint "scount"
  end

  create_table "nj_holdsalesnj8", id: false, force: :cascade do |t|
    t.text "parcel_id"
    t.string "base_id", limit: 7
    t.decimal "avg_price"
    t.bigint "scount"
  end

  create_table "nj_individuals", id: false, force: :cascade do |t|
    t.string "indivname", limit: 5
    t.string "individ", limit: 20
    t.string "hhnum", limit: 20
    t.string "aptnum", limit: 20
    t.string "sex", limit: 20
    t.string "head", limit: 20
    t.date "dob"
  end

  create_table "nj_lonlat5", id: false, force: :cascade do |t|
    t.string "casenumber", limit: 5
    t.float "longitude"
    t.float "latitude"
    t.string "streetname", limit: 20
    t.decimal "quality", precision: 10
  end

  create_table "nj_lookup1", id: false, force: :cascade do |t|
    t.string "pid", limit: 20
    t.string "owner_fy05", limit: 30
    t.string "ptype", limit: 20
    t.string "lu", limit: 30
    t.string "otype", limit: 12
    t.string "utype", limit: 12
    t.string "ougrp", limit: 12
    t.string "fix_owner", limit: 20
  end

  create_table "nj_lookup2", id: false, force: :cascade do |t|
    t.string "fname", limit: 20
    t.string "applicant", limit: 30
    t.string "newfname", limit: 20
    t.string "newapp", limit: 30
    t.string "agroup", limit: 12
  end

  create_table "nj_moves", primary_key: "recipientapt", id: :string, limit: 20, force: :cascade do |t|
    t.string "hhnum", limit: 20
    t.date "movein"
    t.date "moveout"
  end

  create_table "nj_q6", id: false, force: :cascade do |t|
    t.string "pid", limit: 20
    t.string "ougrp", limit: 12
    t.string "num_floors", limit: 6
  end

  create_table "nj_q7", id: false, force: :cascade do |t|
    t.string "pid_long", limit: 10
    t.integer "dummy"
  end

  create_table "nj_q8", id: false, force: :cascade do |t|
    t.string "ougrp", limit: 12
    t.string "pid_long", limit: 10
    t.integer "dummy"
  end

  create_table "nj_triplesales_arms", id: false, force: :cascade do |t|
    t.text "parcel_id"
    t.string "base_id", limit: 7
    t.decimal "avg_price"
    t.bigint "scount"
  end

  create_table "nj_triplesales_fcl", id: false, force: :cascade do |t|
    t.text "parcel_id"
    t.string "base_id", limit: 7
    t.decimal "avg_price"
    t.bigint "scount"
  end

  create_table "nj_wpd", id: false, force: :cascade do |t|
    t.string "wpd", limit: 16
    t.bigint "count"
    t.bigint "count_res"
    t.integer "perc_res"
  end

  create_table "nj_wpdpar", id: false, force: :cascade do |t|
    t.string "wpd", limit: 16
    t.bigint "count"
  end

  create_table "owner_property", id: false, force: :cascade do |t|
    t.string "owner_fy05", limit: 45
    t.string "newlu", limit: 2
    t.text "owner_type"
  end

  create_table "owner_property_v2", id: false, force: :cascade do |t|
    t.string "owner_fy05", limit: 30
    t.string "newlu", limit: 30
    t.string "owner_type", limit: 30
  end

  create_table "owner_property_v3", id: false, force: :cascade do |t|
    t.string "owner_fy05", limit: 45
    t.string "lu", limit: 2
    t.text "newlu"
    t.text "owner_type"
  end

  create_table "spatial_ref_sys", primary_key: "srid", id: :integer, default: nil, force: :cascade do |t|
    t.string "auth_name", limit: 256
    t.integer "auth_srid"
    t.string "srtext", limit: 2048
    t.string "proj4text", limit: 2048
  end

  create_table "ss_4parcel96", id: false, force: :cascade do |t|
    t.string "pid_long96", limit: 10
  end

  create_table "ss_apt_units", primary_key: "aptkey", id: :integer, default: nil, force: :cascade do |t|
    t.integer "devnum"
    t.integer "aptnum"
    t.integer "numofbeds"
    t.decimal "numofbaths", precision: 10, scale: 1
    t.string "kit_liv", limit: 1
    t.integer "sqft"
  end

  create_table "ss_devs", primary_key: "devnum", id: :integer, default: nil, force: :cascade do |t|
    t.string "devname", limit: 20
    t.string "location", limit: 45
    t.date "opendate"
    t.decimal "numofstor", precision: 10, scale: 1
    t.date "lastrenov"
  end

  create_table "ss_ebos05_lookup", id: false, force: :cascade do |t|
    t.string "pid", limit: 10
    t.string "owner", limit: 45
    t.string "ptype", limit: 3
    t.string "owner_lu_grp", limit: 30
  end

  create_table "ss_ebos_predomres", id: false, force: :cascade do |t|
    t.string "pid", limit: 10
    t.string "wpd", limit: 16
    t.string "predomres", limit: 1
  end

  create_table "ss_hh_members", primary_key: "hhmemnum", id: :integer, default: nil, force: :cascade do |t|
    t.string "name", limit: 20
    t.date "dob"
    t.string "sex", limit: 1
    t.string "head", limit: 1
    t.integer "hhnum"
  end

  create_table "ss_holdsales3", id: false, force: :cascade do |t|
    t.text "parcel_id"
    t.string "base_id", limit: 7
    t.decimal "avg_price"
    t.bigint "scount"
  end

  create_table "ss_holdsales6", id: false, force: :cascade do |t|
    t.text "parcel_id"
    t.string "base_id", limit: 7
    t.decimal "avg_price"
    t.bigint "scount"
    t.decimal "stateclass", precision: 3
    t.string "landuse", limit: 2
    t.string "salecode", limit: 2
  end

  create_table "ss_lonlat5", id: false, force: :cascade do |t|
    t.string "casenumber", limit: 5
    t.float "longitude"
    t.float "latitude"
    t.string "streetname", limit: 20
    t.decimal "quality", precision: 10
  end

  create_table "ss_lookup", id: false, force: :cascade do |t|
    t.string "pid", limit: 10
    t.string "owner", limit: 45
    t.string "ptype", limit: 3
    t.string "owner_lu_grp", limit: 30
  end

  create_table "ss_moves", id: false, force: :cascade do |t|
    t.integer "hhnum"
    t.date "movein"
    t.date "moveout"
    t.integer "aptkey"
  end

  create_table "titles", id: false, force: :cascade do |t|
    t.string "TITLE", limit: 140
    t.decimal "PAPER", precision: 10
  end

  create_table "xd_apptype", id: false, force: :cascade do |t|
    t.string "pid", limit: 10
    t.string "owner", limit: 45
    t.string "land_use", limit: 2
    t.text "owner_type"
    t.text "land_use_type"
    t.text "agroup"
  end

  create_table "xd_block_res_perc", id: false, force: :cascade do |t|
    t.string "block_id", limit: 16
    t.float "rcount"
    t.float "total"
    t.float "res_perc"
  end

  create_table "xd_lonlat5", id: false, force: :cascade do |t|
    t.string "casenumber", limit: 5
    t.float "longitude"
    t.float "latitude"
    t.string "streetname", limit: 20
    t.decimal "quality", precision: 10
  end

  create_table "xd_parcelblock", id: false, force: :cascade do |t|
    t.string "parcel_id", limit: 10
    t.string "block_id", limit: 16
    t.string "land_use", limit: 2
    t.float "residential_percent"
    t.string "q3", limit: 10
  end

  create_table "xd_parcelblock0", id: false, force: :cascade do |t|
    t.string "parcel_id", limit: 10
    t.string "block_id", limit: 16
    t.string "land_use", limit: 2
  end

  create_table "xd_q3e", id: false, force: :cascade do |t|
    t.string "parcel_id", limit: 10
    t.string "block_id", limit: 16
    t.string "land_use", limit: 2
    t.float "gross_tax"
    t.float "total_area"
  end

  create_table "xd_q3e1", id: false, force: :cascade do |t|
    t.string "block_id", limit: 16
    t.float "tax_block_avg"
  end

  create_table "xd_q3e2", id: false, force: :cascade do |t|
    t.string "pid", limit: 10
    t.string "owner", limit: 45
    t.string "land_use", limit: 2
    t.text "owner_type"
    t.text "land_use_type"
    t.text "agroup"
    t.string "block_id", limit: 16
    t.float "tax_block_avg"
  end

  create_table "xudong_lonlat5", id: false, force: :cascade do |t|
    t.string "casenumber", limit: 5
    t.float "longitude"
    t.float "latitude"
    t.string "streetname", limit: 20
    t.decimal "quality", precision: 10
  end

  create_table "yh_lonlat5", id: false, force: :cascade do |t|
    t.string "casenumber", limit: 5
    t.float "longitude"
    t.float "latitude"
    t.string "streetname", limit: 20
    t.decimal "quality", precision: 10
  end

  create_table "zw_apptype", id: false, force: :cascade do |t|
    t.string "pid", limit: 10
    t.string "owner_fy05", limit: 45
    t.string "lu", limit: 2
    t.text "agroup"
  end

  create_table "zw_block_count", id: false, force: :cascade do |t|
    t.string "st_num", limit: 15
    t.bigint "count"
  end

  create_table "zw_block_parcels", id: false, force: :cascade do |t|
    t.string "st_num", limit: 15
    t.bigint "count"
  end

  create_table "zw_holdsales11", id: false, force: :cascade do |t|
    t.string "base_id", limit: 7
    t.decimal "saleprice"
    t.bigint "sales"
  end

  create_table "zw_holdsales22", id: false, force: :cascade do |t|
    t.string "base_id", limit: 7
    t.decimal "saleprice"
    t.bigint "sales"
  end

  create_table "zw_holdsales3", id: false, force: :cascade do |t|
    t.text "parcel_id"
    t.string "base_id", limit: 7
    t.decimal "avg_price"
    t.bigint "scount"
  end

  create_table "zw_holdsales4", id: false, force: :cascade do |t|
    t.text "parcel_id"
    t.string "base_id", limit: 7
    t.decimal "avg_price"
    t.bigint "scount"
  end

  create_table "zw_lonlat5", id: false, force: :cascade do |t|
    t.string "casenumber", limit: 5
    t.float "longitude"
    t.float "latitude"
    t.string "streetname", limit: 20
    t.decimal "quality", precision: 10
  end

  create_table "zw_parcel_res_lookup", id: false, force: :cascade do |t|
    t.string "pid", limit: 10
    t.string "st_num", limit: 15
    t.decimal "res_percentage"
    t.boolean "in_res_block"
  end

  create_table "zw_temp_lookup", id: false, force: :cascade do |t|
    t.string "st_num", limit: 15
    t.decimal "res_percentage"
  end

  create_table "zw_teppp", id: false, force: :cascade do |t|
    t.string "pid", limit: 255
    t.string "cm_id", limit: 255
    t.string "gis_id", limit: 255
    t.string "st_num", limit: 255
    t.string "st_name", limit: 255
    t.string "st_name_suf", limit: 255
    t.string "unit_num", limit: 255
    t.string "zipcode", limit: 255
    t.string "ptype", limit: 255
    t.string "lu", limit: 255
    t.string "own_occ", limit: 255
    t.string "owner", limit: 255
    t.string "mail_addressee", limit: 255
    t.string "mail_address", limit: 255
    t.string "mail_cs", limit: 255
    t.string "mail_zipcode", limit: 255
    t.integer "av_land"
    t.integer "av_bldg"
    t.integer "av_total"
    t.integer "gross_tax"
    t.integer "land_sf"
    t.string "yr_built", limit: 255
    t.string "yr_remod", limit: 255
    t.string "gross_area", limit: 255
    t.integer "living_area"
    t.string "num_floors", limit: 255
    t.string "structure_class", limit: 255
    t.string "r_bldg_styl", limit: 255
    t.string "r_roof_typ", limit: 255
    t.string "r_ext_fin", limit: 255
    t.string "r_total_rms", limit: 255
    t.string "r_bdrms", limit: 255
    t.string "r_full_bth", limit: 255
    t.string "r_half_bth", limit: 255
    t.string "r_bth_style", limit: 255
    t.string "r_bth_style2", limit: 255
    t.string "r_bth_style3", limit: 255
    t.string "r_kitch", limit: 255
    t.string "r_kitch_style", limit: 255
    t.string "r_kitch_style2", limit: 255
    t.string "r_kitch_style3", limit: 255
    t.string "r_heat_typ", limit: 255
    t.string "r_ac", limit: 255
    t.string "r_fplace", limit: 255
    t.string "r_ext_cnd", limit: 255
    t.string "r_ovrall_cnd", limit: 255
    t.string "r_int_cnd", limit: 255
    t.string "r_int_fin", limit: 255
    t.string "r_view", limit: 255
    t.string "s_num_bldg", limit: 255
    t.string "s_bldg_styl", limit: 255
    t.string "s_unit_res", limit: 255
    t.string "s_unit_com", limit: 255
    t.string "s_unit_rc", limit: 255
    t.string "s_ext_fin", limit: 255
    t.string "s_ext_cnd", limit: 255
    t.string "u_base_floor", limit: 255
    t.string "u_num_park", limit: 255
    t.string "u_corner", limit: 255
    t.string "u_orient", limit: 255
    t.string "u_tot_rms", limit: 255
    t.string "u_bdrms", limit: 255
    t.string "u_full_bth", limit: 255
    t.string "u_half_bth", limit: 255
    t.string "u_bth_style", limit: 255
    t.string "u_bth_style2", limit: 255
    t.string "u_bth_style3", limit: 255
    t.string "u_kitch_type", limit: 255
    t.string "u_kitch_style", limit: 255
    t.string "u_heat_typ", limit: 255
    t.string "u_ac", limit: 255
    t.string "u_fplace", limit: 255
    t.string "u_int_fin", limit: 255
    t.string "u_int_cnd", limit: 255
    t.string "u_view", limit: 255
    t.string "latitude", limit: 255
    t.string "longitude", limit: 255
  end

  add_foreign_key "ag_addresses", "ag_countries"
  add_foreign_key "ag_addresses", "ag_states"
  add_foreign_key "ag_apartments", "ag_public_housing_devels"
  add_foreign_key "ag_household_apartments", "ag_apartments"
  add_foreign_key "ag_household_apartments", "ag_households"
  add_foreign_key "ag_household_members", "ag_households"
  add_foreign_key "ag_household_members", "ag_residents"
  add_foreign_key "ag_public_housing_devels", "ag_addresses"
  add_foreign_key "ag_states", "ag_countries"
  add_foreign_key "ap_match", "ap_household", column: "householdid", primary_key: "householdid", name: "fk_householdid"
  add_foreign_key "ap_match", "ap_unit", column: "unitid", primary_key: "unitid", name: "fk_unitid"
  add_foreign_key "ap_unit", "ap_housing", column: "housingid", primary_key: "housingid", name: "fk_housingid"
  add_foreign_key "hy_move", "hy_households", column: "household", primary_key: "hhid", name: "fk_household"
  add_foreign_key "hy_residents", "hy_households", column: "family", primary_key: "hhid", name: "fk_family"
  add_foreign_key "hy_units", "hy_developments", column: "development", primary_key: "devid", name: "fk_development"
  add_foreign_key "kd_hh2unit", "kd_households", column: "hh_id", primary_key: "hh_id", name: "fk_hh_id"
  add_foreign_key "kd_hh2unit", "kd_units", column: "unit_id", primary_key: "unit_id", name: "fk_unit_id"
  add_foreign_key "kd_tenants", "kd_households", column: "hh_id", primary_key: "hh_id", name: "fk_hh_id"
  add_foreign_key "kd_units", "kd_hous_devs", column: "dev_id", primary_key: "dev_id", name: "fk_dev_id"
  add_foreign_key "mt_moves", "mt_households", column: "head", name: "fk_headmv"
  add_foreign_key "mt_moves", "mt_units", column: "move_to", primary_key: "unit", name: "fk_moveto"
  add_foreign_key "mt_units", "mt_complexes", column: "cpx_name", primary_key: "cpx_name", name: "fk_cpxname"
  add_foreign_key "nj_apt", "nj_apt", column: "aptno", primary_key: "aptno", name: "fk_aptno"
  add_foreign_key "nj_apt", "nj_developments", column: "nmbuilding", primary_key: "name", name: "fk_nmbuilding"
  add_foreign_key "nj_individuals", "nj_apt", column: "aptnum", primary_key: "aptno", name: "fk_aptnum"
  add_foreign_key "ss_apt_units", "ss_devs", column: "devnum", primary_key: "devnum", name: "fk_devnum"
  add_foreign_key "ss_moves", "ss_apt_units", column: "aptkey", primary_key: "aptkey", name: "fk_aptkey"
end
