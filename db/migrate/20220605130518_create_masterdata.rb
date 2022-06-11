class CreateMasterdata < ActiveRecord::Migration[7.0]
  def change
    create_table :masterdata do |t|
      t.string :customer_name
      t.string :region
      t.string :country
      t.string :actixone_version
      t.string :actixone_architecture
      t.string :oracle_version
      t.string :anaylzer_version
      t.boolean :bing_map
      t.boolean :google_map
      t.boolean :topocoding
      t.boolean :protone
      t.boolean :elka
      t.boolean :fileuploadui
      t.string :platform
      t.string :image_url

      t.timestamps
    end
  end
end
