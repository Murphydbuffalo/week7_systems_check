class RemoveUniqueFromCountry < ActiveRecord::Migration
  def change
    change_column :manufacturers, :country, :string, unique: false
  end
end
