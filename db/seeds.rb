user = User.new(first_name: "Andy", last_name: "Yglecias", email: "andy@email.com", password: "Chicago23", password_confirmation: "Chicago23")
user.save
user = User.new(first_name: "Peter", last_name: "Jang", email: "peter@email.com", password: "Chicago23", password_confirmation: "Chicago23")
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

receipt = Receipt.new(user_id: 1, category_id: 4, merchant: "Chipotle", price: 8, image: "https://s.yimg.com/ny/api/res/1.2/y0m1Ternb0GeHN6hZkBOFQ--~A/YXBwaWQ9aGlnaGxhbmRlcjtzbT0xO3c9NjUwO2g9NDY2/http://globalfinance.zenfs.com/en_us/Finance/US_AFTP_SILICONALLEY_H_LIVE/What_happens_when_you_eat-dba3e8a18a19b2dc5e249a1201b1f755", policy_exp_date: 12/1/21, priority: 1)
receipt.save
receipt = Receipt.new(user_id: 1, category_id: 1, merchant: "Macys", price: 70, image: "https://31.media.tumblr.com/d4382edfee7264ddb4fa392d6c968027/tumblr_inline_my1en4vnRF1qz77yh.png", policy_exp_date: 12/4/21, priority: 7)
receipt.save
receipt = Receipt.new(user_id: 2, category_id: 4, merchant: "Al's Beef", price: 15, image: "https://www.bet.com/news/national/photos/2015/05/crazy-restaurant-receipts/_jcr_content/mainCol/imagegallerycontainer/galleryimage_2.custom1540fx865fx0xcrop.dimg/__1432431366024/052315-national-crazy-restaurant-receipts-louisiana-racist-receipt.jpg", policy_exp_date: 12/10/21, priority: 1)
receipt.save
receipt = Receipt.new(user_id: 1, category_id: 3, merchant: "Auto-Zone", price: 100, image: "https://s3-media3.fl.yelpcdn.com/bphoto/5q_SBViV1JkeU8_q-jQ3fw/o.jpg", policy_exp_date: 12/15/21, priority: 9)
receipt.save
receipt = Receipt.new(user_id: 1, category_id: 1, merchant: "Macy's", price: 163.54, image: "https://s3-media0.fl.yelpcdn.com/bphoto/m7OcaW6A-q5jpbRmFsUiMA/o.jpg", policy_exp_date: 8/11/21, priority: 3)
receipt = Receipt.new(user_id: 1, category_id: 1, merchant: "Ralph Lauren", price: 307.22, image: "https://i.ebayimg.com/images/g/404AAOSwOdpXyCrL/s-l640.jpg", policy_exp_date: 3/29/21, priority: 6)
receipt.save
receipt = Receipt.new(user_id: 1, category_id: 1, merchant: "Lacost", price: 209.15, image: "https://i.ebayimg.com/images/g/BiIAAOSwvTBZrvnW/s-l1600.jpg", policy_exp_date: 7/11/21, priority: 1)
receipt.save
receipt = Receipt.new(user_id: 1, category_id: 2, merchant: "Electric bill", price: 100.37, image: "https://i.stack.imgur.com/9EkvB.jpg", policy_exp_date: 8/12/21, priority: 2)
receipt.save
receipt = Receipt.new(user_id: 1, category_id: 2, merchant: "Phone bill", price: 205.41, image: "https://i.pinimg.com/originals/2a/88/c6/2a88c6395286a31a718459c9008b0e31.jpg", policy_exp_date: 4/01/21, priority: 5)
receipt.save
receipt = Receipt.new(user_id: 1, category_id: 2, merchant: "Cable bill", price: 150.11, image: "https://cdn2.vectorstock.com/i/1000x1000/13/86/cable-service-phone-bill-document-sample-template-vector-1261386.jpg", policy_exp_date: 10/18/21, priority: 2)
receipt.save
receipt = Receipt.new(user_id: 1, category_id: 3, merchant: "Jiffy Lube", price: 40.40, image: "https://live.staticflickr.com/4046/4449679463_178bb4781e_b.jpg", policy_exp_date: 5/14/21, priority: 2)
receipt.save
receipt = Receipt.new(user_id: 1, category_id: 3, merchant: "Advanced Auto Parts", price: 67.21, image: "https://expensefast.com/storage/designs/design-937c7aa0-6aa6-11ea-945a-675eafaf1344.png.jpg", policy_exp_date: 3/18/21, priority: 7)
receipt.save
receipt = Receipt.new(user_id: 1, category_id: 3, merchant: "O'Riley's Auto Parts", price: 16.11, image: "https://s3-media0.fl.yelpcdn.com/bphoto/qlohsKejZxF7YkCIHFU7TQ/l.jpg", policy_exp_date: 3/18/21, priority: 1)
receipt.save
receipt = Receipt.new(user_id: 1, category_id: 5, merchant: "Best Buy", price: 809.11, image: "https://www.seekpng.com/png/full/117-1179714_best-buy-tv-receipt-2018.png", policy_exp_date: 11/28/21, priority: 10)
receipt.save
receipt = Receipt.new(user_id: 1, category_id: 5, merchant: "Office Max", price: 1204.98, image: "https://s3-media0.fl.yelpcdn.com/bphoto/ATEMU_IdKM8qRjjToGMWsQ/l.jpg", policy_exp_date: 11/22/21, priority: 10)
receipt.save
receipt = Receipt.new(user_id: 1, category_id: 5, merchant: "FedEx Office", price: 99.03, image: "https://media-cdn.tripadvisor.com/media/photo-s/0a/5c/c2/c7/receipt-of-fedex.jpg", policy_exp_date: 9/20/21, priority: 5)
receipt.save
receipt = Receipt.new(user_id: 1, category_id: 5, merchant: "Target", price: 111.71, image: "https://assets.change.org/photos/6/kw/bg/VdKwBgSuKBoFOCg-400x400-noPad.jpg?1516180499", policy_exp_date: 6/22/21, priority: 4)
receipt.save

categoryuser = CategoryUser.new(user_id: 1, category_id: 4, spending_cap: 800)
categoryuser.save
categoryuser = CategoryUser.new(user_id: 1, category_id: 1, spending_cap: 200)
categoryuser.save
categoryuser = CategoryUser.new(user_id: 2, category_id: 4, spending_cap: 150)
categoryuser.save
categoryuser = CategoryUser.new(user_id: 1, category_id: 3, spending_cap: 300)
categoryuser.save  