class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
  		t.string :title, null:false, default: ""
  		t.string :message, null:false, default: ""
  		
    end
  end
end
