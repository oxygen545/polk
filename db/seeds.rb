User.create!([
  {username: "Damon Hopkins", email: "damon@hopkins-family.org", encrypted_password: "$2a$11$kQGUNSCYpnhhOqGcATZLhu2ivyQ/EUfBmfesGZ0k0XT85us1cbqc2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2018-12-02 20:04:52", last_sign_in_at: "2018-12-02 04:58:53", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: "P1PGt6pP2mKE6ss9DGNb", confirmed_at: nil, confirmation_sent_at: "2018-12-02 04:54:29", unconfirmed_email: nil}
])
AdminUser.create!([
  {email: "admin@example.com", encrypted_password: "$2a$11$UVRgfh2K9JHCfIDOYCv3n.NK7KDK5oQLYOQ0CdvcDreC/gK2x30Kq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])
Photo.create!([
  {page_name: "index", caption: "Play Image", sequence: 1},
  {page_name: "index", caption: "Play Image", sequence: 2},
  {page_name: "carousel", caption: "<h1 style=\"text-shadow: -3px 2px #000000; text-align: right;\">\r\nJames and Sarah Polk\r\n</h1>\r\n<p style=\"text-shadow: -1px 1px #000000; text-align-right\">\r\nmarried 18XX-18XX\r\n</p>", sequence: 0},
  {page_name: "carousel", caption: "Henry Clay", sequence: 2},
  {page_name: "carousel", caption: "Map of Mexico", sequence: 1},
  {page_name: "carousel", caption: "Gravestone", sequence: 3},
  {page_name: "carousel", caption: "Mexican War", sequence: 4},
  {page_name: "carousel", caption: "Portrait", sequence: 5}
])
Style.create!([
  {stylename: "Default Reds", description: "DarkRed Coral and Tomato", primary_font: "Roboto", secondary_font: "Lobster Two", alt_font: "Times New Roman", primary_color: "#ff1616", secondary_color: "#ae0000", alt_color: "#ffd2c5"},
  {stylename: "Default Blues", description: "Basic Style Blue and Cyan", primary_font: "Lobster Two", secondary_font: "Lobster Two", alt_font: "Lobster Two", primary_color: "#65d8ff", secondary_color: "#0a03ad", alt_color: "#959cb7"},
  {stylename: "Default Greens", description: "Basic Greens", primary_font: "Lobster Two", secondary_font: "Lobster Two", alt_font: "Lobster Two", primary_color: "#c1ffc1", secondary_color: "#cacdca", alt_color: "#31ff37"}
])
Item.create!([
  {title: "Cover Page Project", heading: "Working with ActiveStorage", body: "Lots to do.. to get active storage to work with having things hosted in the cloud vs on the local file system.\r\nDuring deployment I learned all kinds of good things dealing with putting the configuration into environment variables. All new things but seem like valid concepts. Lots to manage in the ENV though.\r\nBack in the day you set your environment and you were done. Not so these days.\r\n<a href=\"/\" class=\"btn btn-sm btn-secondary\">Visit</a>", style_id: 1, user_id: 1, photo_id: 1}
])
