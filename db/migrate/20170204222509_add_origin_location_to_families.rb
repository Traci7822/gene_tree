class AddOriginLocationToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :origin_location, :string
  end
end
