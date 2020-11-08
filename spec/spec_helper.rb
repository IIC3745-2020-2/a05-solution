require 'simplecov'

require_relative '../app/constants/ingredients'
require_relative '../app/constants/bread_types'
require_relative '../app/constants/original_burgers'

def find_by_name(array, name)
  array.find { |element| element.name == name }
end

def find_bread_type_by_name(name)
  find_by_name(BREAD_TYPES, name)
end

def find_ingredient_by_name(name)
  find_by_name(INGREDIENTS, name)
end

def find_original_burger_by_name(name)
  find_by_name(ORIGINAL_BURGERS, name)
end

RSpec.configure do |config|
  config.filter_run_when_matching :focus
end

SimpleCov.start 'rails' do
  add_filter 'constants/'
  add_filter 'models/'
end
