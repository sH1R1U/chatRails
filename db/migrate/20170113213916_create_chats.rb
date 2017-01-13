class CreateChats < ActiveRecord::Migration[5.0]
  def change
    create_table :chats do |t|
    	t.belongs_to :usuarios, index: true
  		t.belongs_to :mensaje, index: true
  		t.datetime :fecha
    end
  end
end
