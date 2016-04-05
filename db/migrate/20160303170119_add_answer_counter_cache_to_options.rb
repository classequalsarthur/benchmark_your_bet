class AddAnswerCounterCacheToOptions < ActiveRecord::Migration
  def change
      add_column :options, :answers_count, :integer, :default => 0
  end
end
