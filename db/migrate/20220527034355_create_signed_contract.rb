class CreateSignedContract < ActiveRecord::Migration[6.1]
  def change
    create_table :signed_contracts do |t|
      t.text :name

      t.timestamps
    end
  end
end
