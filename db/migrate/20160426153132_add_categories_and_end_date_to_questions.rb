class AddCategoriesAndEndDateToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :category, :string
    add_column :questions, :fixture_date, :datetime
  end
end
