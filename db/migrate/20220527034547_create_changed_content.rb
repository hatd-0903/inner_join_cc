class CreateChangedContent < ActiveRecord::Migration[6.1]
  def change
    create_table :changed_contents do |t|
      t.text :name
      t.references :changed_contentable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
