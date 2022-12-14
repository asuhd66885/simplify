class CreateStuffs < ActiveRecord::Migration[6.0]
  def change
    create_table :stuffs do |t|
      t.string     :name ,                  null: false
      t.text       :info ,                  null: false
      t.integer    :category_id ,           null: false
      t.datetime   :start_time
      t.references :user ,                  null: false , foreign_key: true
      t.timestamps
    end
  end
end
