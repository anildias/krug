class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
    	t.string :topic
    	t.string :speaker
    	t.datetime :time
      	t.timestamps
    end
  end
end
