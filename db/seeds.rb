User.create!([
  {username: "Damon Hopkins", email: "damon@hopkins-family.org", password: "password", password_confirmation: "password"}
])
AdminUser.create!([
  {email: "damon@hopkins-family.org", password: "password", password_confirmation: "password"}
])
Photo.create!([
  {page_name: "index", caption: "Whitehouse", sequence: 0},
  {page_name: "index", caption: "tophat", sequence: 1},
  {page_name: "carousel", caption: "James K. Polk, in full James Knox Polk, (born November 2, 1795, Mecklenburg county, North Carolina, U.S.—died June 15, 1849, Nashville, Tennessee), 11th president of the United States (1845–49).", sequence: 0},
  {page_name: "carousel", caption: "Map of Mexico before the US Mexican War", sequence: 1},
  {page_name: "carousel", caption: "Henry Clay Sr. was an American lawyer, planter, and statesman who represented Kentucky in both the United States Senate and House of Representatives represented by the Whig Party and ran againts Polk.", sequence: 2},
  {page_name: "carousel", caption: "When James K. Polk accepted the Democratic Party's nomination for the presidency, he was not very well known. ... He was called a \"dark horse\" candidate because he was not expected to beat his opponent, Henry Clay of the Whig Party, to become the 11th president of the United States.", sequence: 3},
  {page_name: "carousel", caption: "Gravesite", sequence: 4},
  {page_name: "carousel", caption: "President Polk declares war on Mexico. On May 13, 1846, the U.S. Congress overwhelmingly votes in favor of President James K. Polk's request to declare war on Mexico ina dispute over Texas. ... But in 1844, President John Tyler restarted negotiations with the Republic of Texas, culminating with a Treaty of Annexation.", sequence: 5},
  {page_name: "carousel_photo", caption: " portrait", sequence: 0},
  {page_name: "carousel_photo", caption: "Play Still Image", sequence: 1},
  {page_name: "carousel_photo", caption: "married_portrait", sequence: 2},
  {page_name: "carousel_video", caption: "trailer", sequence: 0}
])
Style.create!([
  {stylename: "Default", description: "Blacks and Greys", primary_font: "Times New Roman", secondary_font: "Lobster Two", alt_font: "Times New Roman", primary_color: "#aaaaaa", secondary_color: "#111111", alt_color: "#000000"}
])
Item.create!([
  {title: "carousel", heading: "\"WHO IS JAMES K. POLK?\"", body: "- a new play by Kevin J. Alcock - \r\nAlcock's play humorously presents the former President as he attempts to defend his legacy to a modern audience who barely knows his name. The only U.S. President to have first acted as Speaker of the House of Representatives, Polk may have only served for one term, but in those four years, he waged the Mexican-American War, and added Texas, California and the Oregon Territory to the United States. He also indirectly led us into the U.S. Civil War. \"Who Is James K. Polk?\" explores the many facets of this \"dark horse\" candidate who unexpectedly went on to become one of the most hands-on executives ever to occupy the White House.", style_id: 1, user_id: 1, photo_id: 9},
  {title: "carousel", heading: "Politics in Slavery", body: "Polk's political actions on slavery varied depending on which elected position he held. As a US Congressman representing a slave-holding constituency, he voted for every pro-slavery measure brought before Congress. As Speaker of the US House, however, his main goal was to keep the business of government moving forward. He thought that the increasingly high numbers of pro and anti-slave memorials coming before congress hindered good government and threatened the country's stability. To stifle both sides, Polk invoked the \"gag\" rule\" that prevented and legislation regarding slavery from being brought to the floor for discussion. As Governor of Tennessee when the state was divided over the issue (East Tennessee was strongly anti-slavery), Polk's views once again reflected that split, and his course on slavery was fairly moderate. As President of the United States when the country was struggling with the implications of the \"peculiar institution,\" Polk once again tried to keep slavery from becoming an issue, fearing that it could tear the country apart.", style_id: 1, user_id: 1, photo_id: 9},
  {title: "carousel", heading: "Did you Know?", body: "Polk laid the cornerstone of the Washington Monument, choose the site of the Smithsonian Institute, started the Navel Academy in Annapolis and  created the modern postal system...and they were not even on his list of goals", style_id: 1, user_id: 1, photo_id: 3}
])
