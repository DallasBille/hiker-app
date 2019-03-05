class AddImgUrlToNationalParks < ActiveRecord::Migration[5.2]
  def change
    add_column :national_parks, :img_url, :string
  end
end
