# -*- encoding : utf-8 -*-
class AddTownToClub < ActiveRecord::Migration
  def self.up
    add_column :clubs, :city, :string
  end

  def self.down
    remove_column :clubs, :city
  end
end
