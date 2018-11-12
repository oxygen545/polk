User.create!([
  {username: "Damon Hopkins", email: "damon@hopkins-family.org", encrypted_password: "$2a$11$8CDG9793r6aLHDbRe1O8vuB5wjhGIBdfIQz.X8WjYuI/TaHvohjwa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-11-12 03:48:06", last_sign_in_at: "2018-11-12 03:48:06", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: "qVJ1Hnb1WHqUFzne-BCh", confirmed_at: nil, confirmation_sent_at: "2018-11-12 03:45:45", unconfirmed_email: nil}
])
AdminUser.create!([
  {email: "admin@example.com", encrypted_password: "$2a$11$dvNucDtbYsox0SSJu7JEv.sbfe2Kn5qTlKHSZye7n86V6gyhDwDNO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])
Photo.create!([
  {page_name: "cover", caption: "Jenny and baby Lizzy 1996", sequence: 1},
  {page_name: "FMN Products", caption: "Forget Me Not Products", sequence: 1},
  {page_name: "Soap", caption: "I Make Soap", sequence: 1}
])
Style.create!([
  {stylename: "Default", description: "Basic Style Coral and Tomato", primary_font: "Roboto", secondary_font: "Lobster Two", alt_font: "Ariel", primary_color: "#0317fb", secondary_color: "#fcc603", alt_color: "#4dfbe4"}
])
Item.create!([
  {title: "Cover Page Project", heading: "Working with ActiveStorage", body: "Lots to do..", style_id: 1, user_id: 1, photo_id: 1},
  {title: "Forget Me Not Apothecary", heading: "Landing page", body: "Links to Social Media and Ecommerce Services", style_id: 1, user_id: 1, photo_id: 2},
  {title: "Soap", heading: "Hand Made Soap", body: "All the Finest Artisan Soap", style_id: 1, user_id: 1, photo_id: 3}
])
