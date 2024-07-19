class CreateMinutes < ActiveRecord::Migration[7.1]
  def change
    create_table :minutes do |t|
      t.date :meeting_date
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
