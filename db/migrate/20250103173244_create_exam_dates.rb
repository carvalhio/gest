class CreateExamDates < ActiveRecord::Migration[7.2]
  def change
    create_table :exam_dates do |t|
      t.string :grade
      t.date :date
      t.text :subjects

      t.timestamps
    end
  end
end
