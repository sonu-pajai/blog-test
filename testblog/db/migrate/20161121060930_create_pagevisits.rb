class CreatePagevisits < ActiveRecord::Migration
  def self.up
    create_table :pagevisits do |t|
      t.string :user_ip
      t.integer :entity_id
      t.string :entity_type

      t.timestamps
    end
  end

  def self.down
    drop_table :pagevisits
  end
end
