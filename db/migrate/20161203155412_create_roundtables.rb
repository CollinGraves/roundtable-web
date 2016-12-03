class CreateRoundtables < ActiveRecord::Migration
  def change
    create_table :roundtables do |t|
      t.string :name
      t.boolean :public, default: true

      t.timestamps null: false
    end
  end
end
