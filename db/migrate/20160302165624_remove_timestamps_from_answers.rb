class RemoveTimestampsFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :created_at, :string
    remove_column :answers, :updated_at, :string
  end
end
