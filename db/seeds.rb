user = User.new(first_name: "Andy", last_name: "Yglecias", email: "andy@email.com", password: "password", password_confirmation: "password")
user.save
user = User.new(first_name: "Peter", last_name: "Jang", email: "peter@email.com", password: "password", password_confirmation: "password")
user.save

category = Category.new(name: "Clothing")
category.save
category = Category.new(name: "Bills")
category.save
category = Category.new(name: "Auto-Repair")
category.save
category = Category.new(name: "Food")
category.save
category = Category.new(name: "Tax Deductible")
category.save
category = Category.new(name: "Misc")
category.save

receipt = Receipt.new(user_id: 1, category_id: 4, merchant: "Chipotle", price: 8, image: "https://s.yimg.com/ny/api/res/1.2/y0m1Ternb0GeHN6hZkBOFQ--~A/YXBwaWQ9aGlnaGxhbmRlcjtzbT0xO3c9NjUwO2g9NDY2/http://globalfinance.zenfs.com/en_us/Finance/US_AFTP_SILICONALLEY_H_LIVE/What_happens_when_you_eat-dba3e8a18a19b2dc5e249a1201b1f755", policy_exp_date: 12/1/18, priority: 1)
receipt.save
receipt = Receipt.new(user_id: 1, category_id: 1, merchant: "Macys", price: 70, image: "https://31.media.tumblr.com/d4382edfee7264ddb4fa392d6c968027/tumblr_inline_my1en4vnRF1qz77yh.png", policy_exp_date: 12/4/18, priority: 7)
receipt.save
receipt = Receipt.new(user_id: 2, category_id: 4, merchant: "Al's Beef", price: 15, image: "https://www.bet.com/news/national/photos/2015/05/crazy-restaurant-receipts/_jcr_content/mainCol/imagegallerycontainer/galleryimage_2.custom1540fx865fx0xcrop.dimg/__1432431366024/052315-national-crazy-restaurant-receipts-louisiana-racist-receipt.jpg", policy_exp_date: 12/10/18, priority: 1)
receipt.save
receipt = Receipt.new(user_id: 1, category_id: 3, merchant: "Auto-Zone", price: 100, image: "https://s3-media3.fl.yelpcdn.com/bphoto/5q_SBViV1JkeU8_q-jQ3fw/o.jpg", policy_exp_date: 12/15/18, priority: 9)
receipt.save

categoryuser = CategoryUser.new(user_id: 1, category_id: 4, spending_cap: 800)
categoryuser.save
categoryuser = CategoryUser.new(user_id: 1, category_id: 1, spending_cap: 200)
categoryuser.save
categoryuser = CategoryUser.new(user_id: 2, category_id: 4, spending_cap: 150)
categoryuser.save
categoryuser = CategoryUser.new(user_id: 1, category_id: 3, spending_cap: 300)
categoryuser.save  