class CreateDefenses < ActiveRecord::Migration[7.1]
  def change
    create_table :defenses do |t|
      t.integer :townhall
      t.text :content

      t.timestamps
    end
  end
end
