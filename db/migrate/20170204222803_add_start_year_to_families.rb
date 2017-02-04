class AddStartYearToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :start_year, :integer
  end
end
