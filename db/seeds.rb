AdminUser.create!([
  {email: "admin@example.org", password: "password", password_confirmation: "password"}
])

User.create!([
  {username: "Damon Hopkins", email: "damon@hopkins-family.org", password: "password", password_confirmation: "password"}
])

Photo.create!([
  {page_name: "cover", caption: "Jenny and baby Lizzy 1996", sequence: 1},
  {page_name: "FMN Products", caption: "Forget Me Not Products", sequence: 1},
  {page_name: "Soap", caption: "I Make Soap", sequence: 1}
])

Style.create!([
  {stylename: "Default Reds", description: "DarkRed Coral and Tomato", primary_font: "Lobster Two", secondary_font: "Lobster Two", alt_font: "Lobster Two", primary_color: "darkred", secondary_color: "tomato", alt_color: "coral"},
  {stylename: "Default Blues", description: "Basic Style Blue and Cyan", primary_font: "Lobster Two", secondary_font: "Lobster Two", alt_font: "Lobster Two", primary_color: "#0700ae", secondary_color: "#5c63e5", alt_color: "#b0b6cc"},
  {stylename: "Default Greens", description: "Basic Greens", primary_font: "Lobster Two", secondary_font: "Lobster Two", alt_font: "Lobster Two", primary_color: "#165116", secondary_color: "#00ae04", alt_color: "#9aff6c"}
])

Item.create!([
  {title: "Cover Page Project", heading: "Working with ActiveStorage", body: "Lots to do.. to get active storage to work with having things hosted in the cloud vs on the local file system.\r\nDuring deployment I learned all kinds of good things dealing with putting the configuration into environment variables. All new things but seem like valid concepts. Lots to manage in the ENV though.\r\nBack in the day you set your environment and you were done. Not so these days.\r\n<a href=\"/\" class=\"btn btn-sm btn-secondary\">Visit</a>", style_id: 1, user_id: 1, photo_id: 1},
  {title: "Forget Me Not Apothecary", heading: "Landing page", body: "Links to Social Media and Ecommerce Services\r\n<a href=\"https://fmn-apothecary.herokuapp.com\" class=\"btn btn-sm btn-secondary\">Visit</a>", style_id: 2, user_id: 1, photo_id: 2},
  {title: "Soap", heading: "Hand Made Soap", body: "All the Finest Artisan Soap", style_id: 3, user_id: 1, photo_id: 3}
])
