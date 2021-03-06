class CreateCreditcards < ActiveRecord::Migration[5.2]
  def change
    create_table :creditcards do |t|
      t.timestamps
      t.integer          :user_id, foreign_key: true
      t.string           :card_id, null: false
      t.string           :customer_id, null: false
    end
  end
end