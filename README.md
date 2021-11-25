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

### Items - CRUD + Authorization

The main feature of ProsMa is the ability to view, add, edit, and delete items as a user or seller. Any user without an account can browse the catalogue of items, and click each one to view detailed information about the item. If the user is logged in, the user will then be able to add the item to a cart, or checkout the item for payment in Stripe. The items can also be searched via its name, or filtered by its limb. A seller has the ability to add, edit or delete an item, plus also update its stock by editing its quantity. An admin user has complete functionality over items.

### Users - CRUD + General user, seller, admin

The users feature allows users to register for an account which unlocks other funcionality of the application such as cart and payments. Authorization implemented enables sellers and admin users (via roles) have additional functionality, such as adding/editing/deleting items. Admin users will have complete control over all features including editing or deleting other users and items.

### Filter by Limb & Search by Name

Users will be able to search the cataloge of items via a search bar which will find all matching items in the database. These methods call the relevant scopes located in the item model, and will retrieve the items as needed.

### Cart

Cart functionality allows users to add and save items to a cart for grouped checkout via Stripe. The cart will display all of the saved items and can be removed if need be. The cart will be unique to each user and will be saved whether the user is logged in or out.

### Payments with Stripe - Item & Cart

Using the ruby gem Stripe, once a user wants to checkout an item, they can complete the purchase via the third party API service Stripe. The payment service has also been implemented for the cart, allowing multiple items to be checked out at once.

## Upcoming Features

### Reviews

Future updates will implement a review system, allowing logged in users to write, view, edit and delete views for items. They will only be able to review an item if they have purchased that specific item. Reviews will have associations to an item and to a user.

### Order tracking

Future updates will implement orders and order tracking.

### Additional filters

Future updates will contain filter by control type, and filter by material to improve the user experience.

## Sitemap

Sitemap
![Sitemap](https://github.com/JLee-WD/prosma/blob/master/docs/Sitemap.png)

## Screenshots

Index page screenshot - Item Catalogue
![Screenshot - Index](https://github.com/JLee-WD/prosma/blob/master/docs/SS_index.png)

Show page screenshot - Item Details
![Screenshot - Show](https://github.com/JLee-WD/prosma/blob/master/docs/SS_show.png)

Add Item page screenshot
![Screenshot - Add Item](https://github.com/JLee-WD/prosma/blob/master/docs/SS_add.png)

Cart page screenshot
![Screenshot - Cart](https://github.com/JLee-WD/prosma/blob/master/docs/SS_cart.png)

Profile page screenshot
![Screenshot - View Profile](https://github.com/JLee-WD/prosma/blob/master/docs/SS_profile.png)

Edit/New profile page screenshot
![Screenshot - Edit Profile](https://github.com/JLee-WD/prosma/blob/master/docs/SS_editpro.png)

Admin page screenshot - Dashboard
![Screenshot - Admin Dashboard](https://github.com/JLee-WD/prosma/blob/master/docs/SS_admin.png)

Stripe checkout screenshot
![Screenshot - Stripe payment](https://github.com/JLee-WD/prosma/blob/master/docs/SS_stripe.png)

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
- HTML 5
- SCSS/CSS
- Bootstrap - Front-end framework
- Git/Github - Source control
- Trello - Project management
- Balsamiq - Wireframe
- Canva - Slide Deck

### Gems

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
![Wireframe - Index](https://github.com/JLee-WD/prosma/blob/master/docs/WF_index.png)

Show page - Item Details
![Wireframe - Show](https://github.com/JLee-WD/prosma/blob/master/docs/WF_show.png)

Form page - Sign Up
![Wireframe - Form](https://github.com/JLee-WD/prosma/blob/master/docs/WF_form.png)

Admin page - Dashboard
![Wireframe - Admin](https://github.com/JLee-WD/prosma/blob/master/docs/WF_admin.png)

## Entity Relationship Diagram

Prosma Entity Relationship Diagram
![Prosma - ERD](https://github.com/JLee-WD/prosma/blob/master/docs/ProsmaERB.png)

## High-level components

ProsMa is built with Ruby on Rails which uses a Model-View-Controller architecture. This means that database interactions are done by the models, views render the information to the browser, and the controllers operate the the logical interactions between the two. ProsMa has been constructed based on this architecture. When a user makes a request via the browser, the router redirects the request to the appropriate controller and controller method. Depending on the request, usually the controller will communicate with the model, which then communicates with the postgresql database to return the relevant data. This data is then appropriately handled by the controller and returned back to the browser via views, which render the data into HTML, styled by CSS. ProsMa uses various models, views and controllers:

### Models

- _Item model_ - The item model stores and validates the data related to items. When an item is created, the item model is instansiated with all of the relations outlined in the model. The item _belongs to_ a user, as a user is authorized to create, edit and delete items. The item also _belongs_to_ a limb, allowing the item to be categorized via limbs, when the items are rendered in the views. Items have an image attached via an active record association, with the image hosted by Amazon S3. The item itself is stored on the database containing all of the relevant identifying information such as: title, price, quantity, control type, material, and a description. Query paramaters for the identifying information (and more) passed to the item model are also whitelisted via relevant validations. The item model also contains two scopes, one for searching items via title, and the other is to filter items via limbs.

- _User model_ - The user model stores and validates data related to users. The user model also contains all of the required devise modules for authentication. The user has a few relations including a cart and cart items. A user also relates to the many items a user can create via the controller. Finally, the model contains an enum attriubte to map user roles to integers and visa versa.

- _Limb model_ - The limb model simply allows the instansiation of a limb, to allow the categorization of items (as item belongs to a limb, and a limb has many items). As more categories are added in future updates (such as material and control type), a join table will be needed between limb and item.

- _Cart model_ - The cart model allots a user to have a cart to store items for grouped checkout with stripe. The cart has many items through cart items, allowing the cart to store items without affecting or deleting the actual listed item.

- _Cart-item model_ - The cart-item is a housed in a join table, between an item and a cart. The cart-item belongs to a cart, and belongs to an item. Plus it has one user through the cart relation so it can be saved even if a user logs out.

### Views

- _Item views_ - The item views are a group of embedded ruby html files for listing(index), showing, editing and creating items. The index view contains the search and filter fields, and a loop which renders all items via the partial'card'. The show view, renders the selected item in a detailed format. The new and edit views contain the partial form which allows parameters to be assigned or changed on an item via the form.

- _User views_ - The user views are a couple of views, a show view and a log in view. The show view renders a users profile information and if the user has the role of seller, the items are shown below. If the current user (or admin) is viewing their own profile, the 'edit profile' button appears allowing the user to route to the edit profile form.

- _Cart views_ - The cart view is a single view which renders all of the cart items in the current users cart, through a partial named card cart item. The view contains a checkout button, and scripts allowing payment via stripe.

- _Devise views_ (authentication) - The devise views are a collection of views facilitatiing authentication via devise. There are views for sign up, sign in, and change password among others. Authorization is aided with the auto generation of these views when devise is implemented.

- _Layout views_ - Layout views contain the application view, which is the default for rendering every page. The application view contains the HTML boilerplate required to properly render a HTML page in the browser. Each and every view is inserted into this view via the _yield_ keyword located in the body. Also in this view are links and scripts for stylesheets, fonts, and bootstrap. At the top of the body is the navbar which renders on each view.

- _Admin views_ - The single admin view simply renders the dashboard which contains a list of current users, a summary if the listed items, and in future updates, a list of most recent orders. The intention for this view is to reveal all of the app's relevant data for administrative uses.

- _Partial views_ - The partial views are smaller view components that are used on other views, such as forms, navbar, item cards, cart item cards etc. Data is passed to views via local parameters passed down from model to controller to view.

### Controllers

- _Items controller_ - The items controller contains all of the methods used to create, edit, show, list, and destroy items. The methods edit, update, and destroy are restricted to the user who created the item. The methods to create an item are restricted to users with the role of seller, or admins. The methods for showing an item, and listing all items are freely accessibly to all users, signed in or not. The show method also contains the parameters used by Stripe for payments, which will redirect the browser to the Stripe checkout portal. Finally, the index method returns the list of items which have been filtered via the search and filter by limb scopes located in the item model.

- _Users controller_ - The users controller contains all methods to show, edit, update or destroy user profiles. The methods for edit and destroy are restricted to the user and admin, via authentication. The show method allows a users profile information to be rendered in the relevant view.

- _Carts controller_ - The carts controller contains all the methods to instantiate a cart for a user, to show all items in a cart, to add items to a cart and to delete items from a cart. The controller makes use of authentication to make sure only users who are signed in are able to use the cart funcitonality. The controller also contains the parameters used by Stripe so a user can checkout the entire contents of the cart, and pay via stripe.

- _Application controller_ - All of the app's controllers inherit from the application controller which also inherits from ActionController::Base, which contains classes and method definitions for handling HTTP requests. This controller sits at the top of the controller hierarchy, thus the devise parameter sanitizers reside in this controller.

- _Admins controller_ - The admin controller contains an index method, used to send data about users and items back to the admin dashboard view.

- _Payments controller_ - As all of the checkout and payments are handled by the Stripe API, the payments controller merely facilitates rendering the success of the payment via a single method named success.

- _Devise users controllers_ - The devise controllers are a collection of controllers created by devise facilitating user registration and sign in.

## Third party services

- _Stripe_ - A ruby gem for an online payment API Stripe designed for online businesses. Stripe offers secure payments which are handled outside of the application. Using an account created on Stripe, payments are sent and securely verified for items purchased on ProsMa.

- _Devise_ - A ruby gem which facilitates authentication, allowing users to sign up, log in, log out and change passwords securely. The gem has many inbuilt methods, and with this gem you are able to quickly an authentication framework across any MVC rails application.

- _Amazon S3_ - Cloud based object storage used to store the applications images. Amazon S3 offers scalability, enterprise level security, performance and availability. Images uploaded via ProsMa are linked via active storage, then uploaded to S3.

- _Heroku_ - A cloud based application platform, allowing applications to be built, run and hosted online. Besides the main platform service, heroku also provides a cloud database based on PostgreSQL.

- _Bootstrap_ - free and open source front-end CSS framework for quick and efficient styling. Bootstrap is a library which combines HTML, CSS and Javascript into reusable components.

## Project models relationships

### Item model relations

- Item belongs_to a :user
- Item has_one_attached :picture
- Item belongs_to a :limb
- Item has_many :cart_items
- Item has_many :carts, through :cart_items

### User model relations

- User has_one :cart
- User has_many :items
- User has_many :cart_items, through :cart

### Limb model relations

- Limb has_many :items

### Cart

- Cart has_many :cart_items
- Cart has_many :items, through :cart_items
- Cart belongs_to, :user

### Cart-item

- Cart item belongs_to :cart
- Cart item belongs_to :item
- Cart item has_one :user, through :cart

### To be implemented in future updates

- User has_many :reviews
- Item has_many :reviews
- Review belongs_to :user
- Review belongs_to :item
- Order belongs_to :user
- Order has_many :order_items
- User has_many :orders
- Order Items belongs_to :user, through :order
- Order Item belongs to :item

## Database relations

![User relation](https://github.com/JLee-WD/prosma/blob/master/docs/R_user.png)

- **_User_** relation handles the majority of the user's information, minus the user address (which will be implemented in future updates as a separate referenced relation). The user relation, through authorizaion, dictates the level of functionality the user will have on the application. This is indicated via the role row. The relation also stores all of authentication data collected when a user creates or edits an account. This includes the email, encrypted password, reset password tokens, and sign in metadata. Without the user relation, much of the core functionality of the app (cart, profile, payments) are unusable.

![Item relation](https://github.com/JLee-WD/prosma/blob/master/docs/R_item.png)

- **_Item_** relation contains item data including title, description, price, control_type, material and quantity. As the item belongs to a single user, and to a single limb, the relation has two foreign keys: user_id and limb_id. Stripe also uses this information to fulfill payments. Only a user with the role of seller or admin can instantiate items. The item relation is at the core of the application, cart_items cannot be created without a reference to an item, same goes with payments, reviews (to be implemented) and orders.

![Cart & Cart Item relation](https://github.com/JLee-WD/prosma/blob/master/docs/R_cart.png)

- **_Cart & Cart Item_** relations handle cart functionality for the application. The cart items reference a single cart with a cart_id and an item with an item_id, while the cart references a single user with a user_id. Cart items operates as a join table between the cart and an item allowing adding and removing cart items to the cart without affecting the item until checkout.

![Limb relation](https://github.com/JLee-WD/prosma/blob/master/docs/R_limb.png)

- **_Limb_** relation contains a single row for the name. This relation allows items to be catagorized, as each item belongs to a single limb and items through their association can be filtered and sorted via the connection.

![Active Storage relation](https://github.com/JLee-WD/prosma/blob/master/docs/R_actv.png)

- **_Active storage attachments & blobs_** relations refer to the image uploading capacity for items. An item has one picture (multiple pictures to be implemented in future updates), and this picture is attached via an active storage attachment relation, which has an association to an active storage blob.

### Future relations

![Review relation](https://github.com/JLee-WD/prosma/blob/master/docs/R_rev.png)

- **_Review_** relation will have an belongs_to association to an item, and a user. The review will contain two rows, a description with datatype text, and a rating with datatype integer. A user will have many reviews, same with an item.

![Order and Order Item relation](https://github.com/JLee-WD/prosma/blob/master/docs/R_order.png)

- **_Order and Order Item_** relations have a similar schema structure to cart and cart items. An order belongs to a user and has many order items. An order item belongs to an order, and an item, plus operates as an join table between order and items. An order item will have a foreign key for an order, and an item.

![User Address relation](https://github.com/JLee-WD/prosma/blob/master/docs/R_addr.png)

- **_User Address_** relation has a belongs to association to a user, and a user has one user address. The relation will contain a unit, postcode, & street number, datatypes integer. It will also have a street name, suburb, street type, and country, datatypes string. The user address relation, when it is implemented, will also have an association with an order.

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

![Trello Board 1](https://github.com/JLee-WD/prosma/blob/master/docs/Trello1.png)
![Trello Board 2](https://github.com/JLee-WD/prosma/blob/master/docs/Trello2.png)

Tasks were planned and tracked via the ProsMa trello board. Taskes were divided in the following lists by category:

- **_Rubric_** - contains cards pertaining to the requirements for the assessment. Each card contains the HD or D requirement for each criterea, and act as goals for their relevant parts. Once a card is deemed satisfied, or at least attempted to the best of my ability, the card is labelled complete (as with all other cards in other lists).

- **_Code/Technology Requirements_** - contains cards related to the requirements for the ruby on rails application. Cards are labelled either optional or a feature, and a not-completed label.

- **_User Stories_** - contains all relevant user story cards for general users, sellers and admins. Each card contains a single user story to be fulfilled, to deliver the highest value benefits for the customers immediate needs. The user stories also form the basic building blocks of an MVP application. These stories were reviewed almost daily and checked off when complete.

- **_Features_** - contains cards relevant to small, easy to track bits of functionality which may contain items from previous lists. The benefit of the features list is that it breaks other tasks and features into smaller parcels, and also covers items which the other lists do not.

- **_Currently Working_** - are productivity lists. As a card is currently being worked on in a particular session, it is moved to currently working so I can keep track of what task I am up to. When a card is complete, the completed label replaces the not-completed label, and moved back to the relevant list.

- **_Future Tasks and Errors TBD_** - contain cards that are mainly features that will be completed in future updates. The errors TBD list is for cards which I have trouble completing, thus I would move the card to this list and move on to other features. I will come back at a later time to finish the incomplete card, after I have sought the correct guidence.

Cards have various labels which relate to their status. Each card is labelled either not-completed, completed or optional. Core functionality cards are labelled MVP to indicate the most urgent features. Each card also has a categorizing label, Rubric, Requirements, User story etc.

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
