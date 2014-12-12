class User < ActiveRecord::Base
  validates :name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true 
end


# 1,feature,"mvp,validations","Users must enter the first name, last name and email of a user  (on both new and edit)",,"![](https://galvanize.mybalsamiq.com/mockups/2436962.png?key=dd6f91232218fa4d6cbf663738e10e0cfca3e151)"
# 1,feature,"mvp,validations",Users must enter a unique email for users,,""

# create_table "users", force: true do |t|
#   t.string   "name"
#   t.string   "email"
#   t.datetime "created_at"
#   t.datetime "updated_at"
#   t.string   "last_name"
# end
