# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file


# 1b. check out the model file

# 2. create new companies
p Company.all.count
puts "There are #{Company.all.count} companies."
# 3. query companies table
values = { name: "Apple Inc.", url: "https://www.apple.com", city: "Cupertino", state: "CA" }
apple = Company.new(values)
apple.save

puts "There are #{Company.all.count} companies."

amazon = Company.where({ name: "Amazon.com, Inc." })[0]
amazon_id = amazon.read_attribute(:id)
values = { first_name: "Andy", last_name: "Jassy", email: "andy@amazon.com", phone_number: "666-666-6666", company_id: amazon_id }
contact = Contact.new(values)
contact.save


# 4. read column values from row

# 5. update attribute value
