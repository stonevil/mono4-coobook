require 'foodcritic'
require 'rubocop/rake_task'

task default: [:foodcritic, :rubocop]

desc 'Run Foodcritic'
FoodCritic::Rake::LintTask.new

desc 'Run RuboCop'
RuboCop::RakeTask.new(:rubocop)
