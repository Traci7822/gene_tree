class AddMottoToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :motto, :string
  end
end
