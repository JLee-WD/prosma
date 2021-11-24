# ProsMa - Prosthetic limb marketplace

## T2A2 - Marketplace Project

https://prosma.herokuapp.com/

https://github.com/JLee-WD/prosma

## The Problem

The process of acquiring a prosthetic can be daunting for a new amputee. After going through rehabilitation, countless doctor visits, and then reaching out to a prosthetist possibly from a referral, the individual is then given limited options at set prices with very little government support. Then come the questions for the prosthesis itself:

- What do I want to do with a prosthesis?
- What activities do I want to do or continue to do?
- Do I want to run? Do I want to grab things? Do I want to be able to see?
- How will it look? Do I want a realistic looking prosthesis?

Not to mention the financial strain from becoming an amputee. Employment prospects would need to be re-evaluated, and a reliable prosthetic would be needed in some cases to continue work.

Amputees with access to more advanced prosthetic limbs allows them to gain or retain employment, thus contributing to the economy. With suitable replacement limbs, they are able to remain active, and engage in a healthy productive lifestyle and reduce long term health complications. In short, they are able to achieve a higher quality of life with more advanced and more suitable prosthetic replacements.

Poor fitting or poor performing prosthetics can affect the mental health of amputees. Ill fitting prosthetics are a constant reminder of their physical impairment, and does not allow them to fully participate in society which gives rise to feelings of frustration, disappointment, anger and even depression.

The abscence of a centralised marketplace to purchase prosthetics means the abscence of the freedom to choose from a range of options, at different price points, right from your phone.

## Why the Problem need solving

ProsMa offers a wider range of prosthetic limbs authorised sellers from around the world. By creating a platform where a customer can view and compare similar products, ProsMa fosters a competitive environment for the sellers. A competitive marketplace adds pressure for the sellers to lower prices, provide additional services and increase the quality of their products, all for the benefit for the buyer. Why should the buyer purchase a prosthetic limb for an inflated price, when they can buy a higher quality one from Japan for half the price?

The abscence of an existing competitive marketplace for prosthetic implants, allows manufacturers to set their own prices. Prices for similar implants by different businesses can range significantly, to the buyer they appear arbritrary without the a side by side comparison of the potential benefits and drawbacks of each.

Amazon, eBay, Alibaba are filled with sellers constantly undercutting each others prices with cheaper and better offerings. The goal for ProsMa would be to replicate this competitive market for the sale of prosthetics, and give the customer who has lost a limb, hope that they can continue their life without spending their life savings on an advanced prosthetic.

## Purpose

The purpose of ProsMa is to provide an online prosthetic marketplace platform, which allows users to browse and purchase prosthetics from authorised buyers. The goal would be to provide a website which offers all of the most current and advanced prosthetics available across the world, and give the ability for customers to review the item and make a purchase.

Manufacturers and sellers would have a platform to reach customers outside of their immediate network of customers from refferals. They will be able to showcase their products, provide specifications, advertise their advanced products, and set competitive prices.

The end goal for ProsMa would be to advance and normalize the sale and procurement of prosthetic limbs, to eventually usher in voluntary replacement of limbs for true bionic replacements. Customers will be able to replace their fading eyesight for futuristic bionic eyeballs offering 20/20 vision. Crippled people will be able to replace useless limbs for strength enhancing prosthetics. This is the future that ProsMa envisions.

## Functionality & Features

- Users - CRUD + General user, seller, admin
- Items - CRUD + Authorization
- Filter by Limb
- Search by Name
- Cart
- Payments with Stripe - Item & Cart

## Upcoming Features

- Reviews
- Order tracking
- Filter by control type
- Filter by material

## Sitemap

Sitemap
![Sitemap](../docs/Sitemap.png)

## Screenshots

Index page screenshot - Item Catalogue
![Screenshot - Index](../docs/SS_index.png)

Show page screenshot - Item Details
![Screenshot - Show](../docs/SS_show.png)

Add Item page screenshot
![Screenshot - Add Item](../docs/SS_add.png)

Cart page screenshot
![Screenshot - Cart](../docs/SS_cart.png)

Profile page screenshot
![Screenshot - View Profile](../docs/SS_profile.png)

Edit/New profile page screenshot
![Screenshot - Edit Profile](../docs/SS_editpro.png)

Admin page screenshot - Dashboard
![Screenshot - Admin Dashboard](../docs/SS_admin.png)

Stripe checkout screenshot
![Screenshot - Stripe payment](../docs/SS_stripe.png)

## Target Audience

- Individuals who have lost limbs due to trauma, disease or birth defects.

- Individuals with disabilities seeking better quality of life.

- Individuals seeking enhancements such as athletes, workers in extreme conditions, soldiers etc.

- Prosthetic sellers and manufacturers.

## Tech Stack

- Ruby on Rails - Web Application Framework written in Ruby programming language
- Amazon S3 - Cloud image hosting
- Heroku - Cloud platform for deployment
- PostgreSQL - SQL database
- SCSS/CSS - Styling
- Bootstrap - Front-end framework
- Git/Github - Source control
- Trello - Project management

Gems

- Stripe - Payments
- Devise - Authentication

## User Stories

- As a SELLER I want to ADD ITEMS to the marketplace, so that I can post my items FOR SALE
- As a SELLER, I want to DELETE MY ITEM, so that I can REMOVE my item from the marketplace
- As a SELLER, I want to EDIT MY ITEMS, so that I can CHANGE or ADJUST my items as I see fit
- As a SELLER, I want to ADD AN IMAGE to my item for sale, to showcase my product visually
- As a SELLER, I want to be able to add CATEGORIZING INFORMATION to an ITEM, so that my items for sale can be found easier
- As a USER, I want to to SIGN UP for a new account, to save my details for use in the app
- As a USER, I want to EDIT my account details, so I can provide up to date information at any time
- As a USER, I want to DELETE my account, so I can remove my account at any time
- As a USER, I want to ADD ITEMS to a CART, so I can save items for easy checkout
- As a USER, I want to REMOVE ITEMS from my CART, If I change my mind about the item
- As a USER, I want to SORT ITEMS by LIMB CATEGORY, for easy access to the items I am looking for
- As a USER, I want to LOG IN using my account from sign up, so I can use the same account on repeat visits
- As a USER, I want to VIEW AN ITEM with SUMMARISED INFORMATION, so I can quickly view the title, description, type and price of the item
- As a USER, I want to add a REVIEW on an item, so I can help other users
- As a USER, I want to CLICK an item, so I can view DETAILED INFORMATION of the item
- As an Admin, I want to SEE ALL USERS, so I can track all users of the platform
- As an Admin, I want to SEE A SUMMARY OF ALL ITEMS, so I can quickly view how many items and what types are being sold on the website
- As an Admin, I want to CHANGE USER ROLES, so I can authorize users to be SELLERS
- As an Admin, I want to VIEW ALL ORDERS, so I can view and track recent orders

## Wire Frames

Index page - Item Catalogue
![Wireframe - Index](../docs/WF_index.png)

Show page - Item Details
![Wireframe - Show](../docs/WF_show.png)

Form page - Sign Up
![Wireframe - Form](../docs/WF_form.png)

Admin page - Dashboard
![Wireframe - Admin](../docs/WF_admin.png)

## Entity Relationship Diagram

Prosma Entity Relationship Diagram
![Prosma - ERD](../docs/ProsmaERB.png)

## High-level components

## Third party services

- Stripe
- Amazon S3
- Heroku
- Bootstrap

## Project models & relationships

- User
- Item
- Limb
- Cart
- Cart-item

## Database relations

## Database schema design

```
ActiveRecord::Schema.define(version: 2021_11_24_104243) do

  enable_extension "plpgsql"

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
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "cart_items", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "cart_id"
    t.bigint "item_id", null: false
    t.index ["cart_id"], name: "index_cart_items_on_cart_id"
    t.index ["item_id"], name: "index_cart_items_on_item_id"
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "price"
    t.bigint "user_id"
    t.string "material", null: false
    t.string "control_type", null: false
    t.bigint "limb_id", null: false
    t.integer "quantity", default: 1
    t.index ["limb_id"], name: "index_items_on_limb_id"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "limbs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "role", default: 1, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cart_items", "carts"
  add_foreign_key "cart_items", "items"
  add_foreign_key "carts", "users"
  add_foreign_key "items", "limbs"
  add_foreign_key "items", "users"
end
```

## Task allocation and tracking

https://trello.com/b/ULSrOleI/prosma

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
