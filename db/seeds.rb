
puts 'Creating 100 fake tasks...'
100.times do
  task = Task.new({
    title: Faker::Cannabis.type,
    details: Faker::Cannabis.health_benefit,
    }
  )
  task.save!
end
