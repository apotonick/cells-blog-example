class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login
      t.string :password_hash
      t.string :password_salt
      t.string :persistence_token

      t.timestamps
    end

    # login : test / password : test
    User.create(:login => "test", :password_hash => "6736ddf84c4a92b2933cc5b74eee3da149c6a71e97ae0cda1421f8adb2d80ef2e43e5131903861d75cd9a61350470e00b98b7b0292627046f814cd3309314cef", :password_salt => "T21ddbyDBLMRKcMtgTV9")
  end

  def self.down
    drop_table :users
  end
end
