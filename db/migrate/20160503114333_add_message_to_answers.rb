class AddMessageToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :message, :string
  end
end
