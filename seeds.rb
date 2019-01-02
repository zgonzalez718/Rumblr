# Run this script with `bundle exec ruby seeds.rb`
require 'sqlite3'
require 'active_record'

#require model classes
require './models/user.rb'
require './models/post.rb'

# Use `binding.pry` anywhere in this script for easy debugging
require 'pry'
require 'csv'

# Connect to a sqlite3 database
# If you feel like you need to reset it, simply delete the file sqlite makes
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/development.db'
)

# do stuff to store initial data
 
User.create(f_name: 'Eric', l_name: 'Rosa', email: 'eric@aol.com', password: 'blue')
User.create(f_name: 'Zee', l_name: 'Gonzalez', email: 'zee@aol.com', password: 'tester')
User.create(f_name: 'Niambi', l_name: 'Sala', email: 'niambi@aol.com', password: 'love')
User.create(f_name: 'Kamau', l_name: 'Gee', email: 'kamau@aol.com', password: 'music')
User.create(f_name: 'Jane', l_name: 'Doe', email: 'jane@aol.com', password: 'unknown')


5.times do
  Post.create(title: 'Erics Posts' , content: 'Small batch microdosing thundercats meh skateboard messenger bag craft beer. Hot chicken fanny pack pok pok unicorn. Four dollar toast letterpress normcore literally pop-up single-origin coffee distillery messenger bag intelligentsia gluten-free humblebrag chicharrones hell of food truck. Selfies blog roof party twee. Paleo tacos shaman waistcoat, leggings sartorial viral.

  Tote bag artisan kogi vaporware sustainable fanny pack meggings venmo photo booth aesthetic marfa la croix roof party williamsburg. Glossier iceland literally microdosing kitsch dreamcatcher cliche seitan you probably havent heard of them. Plaid master cleanse godard vegan, +1 freegan tilde selvage tumeric keytar. Actually sustainable pok pok distillery. Fam distillery subway tile palo santo succulents roof party swag celiac selvage. Selvage af mumblecore, activated charcoal pop-up knausgaard four dollar toast iceland vinyl paleo fam sustainable edison bulb chicharrones. Health goth next level lomo cray flexitarian occupy, mumblecore shoreditch farm-to-table copper mug post-ironic.
  
  Authentic squid craft beer franzen roof party subway tile. Stumptown shabby chic snackwave, schlitz art party pug kickstarter. Snackwave fam trust fund, stumptown quinoa godard selvage post-ironic deep v mlkshk wolf. Ethical seitan slow-carb etsy yr. Glossier master cleanse aesthetic butcher waistcoat chia street art hoodie pug distillery.' , user_id: 1)
end

5.times do
  Post.create(title: 'Zees Posts' , content: 'Small batch microdosing thundercats meh skateboard messenger bag craft beer. Hot chicken fanny pack pok pok unicorn. Four dollar toast letterpress normcore literally pop-up single-origin coffee distillery messenger bag intelligentsia gluten-free humblebrag chicharrones hell of food truck. Selfies blog roof party twee. Paleo tacos shaman waistcoat, leggings sartorial viral.

  Tote bag artisan kogi vaporware sustainable fanny pack meggings venmo photo booth aesthetic marfa la croix roof party williamsburg. Glossier iceland literally microdosing kitsch dreamcatcher cliche seitan you probably havent heard of them. Plaid master cleanse godard vegan, +1 freegan tilde selvage tumeric keytar. Actually sustainable pok pok distillery. Fam distillery subway tile palo santo succulents roof party swag celiac selvage. Selvage af mumblecore, activated charcoal pop-up knausgaard four dollar toast iceland vinyl paleo fam sustainable edison bulb chicharrones. Health goth next level lomo cray flexitarian occupy, mumblecore shoreditch farm-to-table copper mug post-ironic.
  
  Authentic squid craft beer franzen roof party subway tile. Stumptown shabby chic snackwave, schlitz art party pug kickstarter. Snackwave fam trust fund, stumptown quinoa godard selvage post-ironic deep v mlkshk wolf. Ethical seitan slow-carb etsy yr. Glossier master cleanse aesthetic butcher waistcoat chia street art hoodie pug distillery.' , user_id: 2)
end

5.times do
  Post.create(title: 'Niambis Posts' , content: 'Small batch microdosing thundercats meh skateboard messenger bag craft beer. Hot chicken fanny pack pok pok unicorn. Four dollar toast letterpress normcore literally pop-up single-origin coffee distillery messenger bag intelligentsia gluten-free humblebrag chicharrones hell of food truck. Selfies blog roof party twee. Paleo tacos shaman waistcoat, leggings sartorial viral.

  Tote bag artisan kogi vaporware sustainable fanny pack meggings venmo photo booth aesthetic marfa la croix roof party williamsburg. Glossier iceland literally microdosing kitsch dreamcatcher cliche seitan you probably havent heard of them. Plaid master cleanse godard vegan, +1 freegan tilde selvage tumeric keytar. Actually sustainable pok pok distillery. Fam distillery subway tile palo santo succulents roof party swag celiac selvage. Selvage af mumblecore, activated charcoal pop-up knausgaard four dollar toast iceland vinyl paleo fam sustainable edison bulb chicharrones. Health goth next level lomo cray flexitarian occupy, mumblecore shoreditch farm-to-table copper mug post-ironic.
  
  Authentic squid craft beer franzen roof party subway tile. Stumptown shabby chic snackwave, schlitz art party pug kickstarter. Snackwave fam trust fund, stumptown quinoa godard selvage post-ironic deep v mlkshk wolf. Ethical seitan slow-carb etsy yr. Glossier master cleanse aesthetic butcher waistcoat chia street art hoodie pug distillery.' , user_id: 3)
end

5.times do
  Post.create(title: 'Kamaus Posts' , content: 'Small batch microdosing thundercats meh skateboard messenger bag craft beer. Hot chicken fanny pack pok pok unicorn. Four dollar toast letterpress normcore literally pop-up single-origin coffee distillery messenger bag intelligentsia gluten-free humblebrag chicharrones hell of food truck. Selfies blog roof party twee. Paleo tacos shaman waistcoat, leggings sartorial viral.

  Tote bag artisan kogi vaporware sustainable fanny pack meggings venmo photo booth aesthetic marfa la croix roof party williamsburg. Glossier iceland literally microdosing kitsch dreamcatcher cliche seitan you probably havent heard of them. Plaid master cleanse godard vegan, +1 freegan tilde selvage tumeric keytar. Actually sustainable pok pok distillery. Fam distillery subway tile palo santo succulents roof party swag celiac selvage. Selvage af mumblecore, activated charcoal pop-up knausgaard four dollar toast iceland vinyl paleo fam sustainable edison bulb chicharrones. Health goth next level lomo cray flexitarian occupy, mumblecore shoreditch farm-to-table copper mug post-ironic.
  
  Authentic squid craft beer franzen roof party subway tile. Stumptown shabby chic snackwave, schlitz art party pug kickstarter. Snackwave fam trust fund, stumptown quinoa godard selvage post-ironic deep v mlkshk wolf. Ethical seitan slow-carb etsy yr. Glossier master cleanse aesthetic butcher waistcoat chia street art hoodie pug distillery.', user_id: 4)
end

5.times do
  Post.create(title: 'Janes Posts' , content: 'Small batch microdosing thundercats meh skateboard messenger bag craft beer. Hot chicken fanny pack pok pok unicorn. Four dollar toast letterpress normcore literally pop-up single-origin coffee distillery messenger bag intelligentsia gluten-free humblebrag chicharrones hell of food truck. Selfies blog roof party twee. Paleo tacos shaman waistcoat, leggings sartorial viral.

  Tote bag artisan kogi vaporware sustainable fanny pack meggings venmo photo booth aesthetic marfa la croix roof party williamsburg. Glossier iceland literally microdosing kitsch dreamcatcher cliche seitan you probably havent heard of them. Plaid master cleanse godard vegan, +1 freegan tilde selvage tumeric keytar. Actually sustainable pok pok distillery. Fam distillery subway tile palo santo succulents roof party swag celiac selvage. Selvage af mumblecore, activated charcoal pop-up knausgaard four dollar toast iceland vinyl paleo fam sustainable edison bulb chicharrones. Health goth next level lomo cray flexitarian occupy, mumblecore shoreditch farm-to-table copper mug post-ironic.
  
  Authentic squid craft beer franzen roof party subway tile. Stumptown shabby chic snackwave, schlitz art party pug kickstarter. Snackwave fam trust fund, stumptown quinoa godard selvage post-ironic deep v mlkshk wolf. Ethical seitan slow-carb etsy yr. Glossier master cleanse aesthetic butcher waistcoat chia street art hoodie pug distillery.', user_id: 5)
end
