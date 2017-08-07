RSpec.configuration.around(:suite) do |example|
  puts "test 1"
  example.run
end

RSpec.configure do |config|
  config.around(:suite) do |example|
    puts "test 2"
    example.run
  end
end
