class AddPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string

  end
end


# class AddCompletedToTasks < ActiveRecord::Migration
#   def change
#     add_column :tasks, :completed, :boolean, default: false
#   end
# end
