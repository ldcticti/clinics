class CreateJclinics < ActiveRecord::Migration[6.0]
  def change
    create_table :jclinics do |t|
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
