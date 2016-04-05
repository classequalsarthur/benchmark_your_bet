namespace :my_namespace do
  desc "TODO"
  task my_task1: :environment do
      Option.find_each { |option| Option.reset_counters(option.id, :answers) }
  end

  desc "TODO"
  task my_task2: :environment do
  end

end
