class AddAdmin < ActiveRecord::Migration[6.0]
  def change
        User.create! do |u|
        u.name = 'Admin'
        u.email     = 'admin@test.com'
        u.password  = 'lol123'
        u.admin_role = true
    end
  end
end
