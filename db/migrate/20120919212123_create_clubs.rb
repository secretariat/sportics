# -*- encoding : utf-8 -*-
class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :title
      t.string :address
      t.float :longitude
      t.float :latitude
      t.boolean :gmaps

      t.timestamps
    end
  end
end
