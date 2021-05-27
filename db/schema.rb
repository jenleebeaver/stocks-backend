# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_27_175435) do

  create_table "portfolio_stocks", force: :cascade do |t|
    t.bigint "portfolio_id"
    t.bigint "stock_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "s"
    t.float "p"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "portfolio_name"
  end

  create_table "stocks", force: :cascade do |t|
    t.string "s"
    t.float "p"
    t.string "description"
    t.string "country"
    t.string "currency"
    t.string "exchange"
    t.string "ipo"
    t.string "finnhubIndustry"
    t.bigint "marketCapitalization"
    t.text "peers"
    t.integer "buy"
    t.integer "hold"
    t.integer "sell"
    t.integer "strongBuy"
    t.integer "strongSell"
    t.float "peRatio"
    t.integer "portfolio_id"
    t.integer "portfolio_stock_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
