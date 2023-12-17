class RiceCooker
  def initialize
    @rice_present = false
    @rice_cooked = false
    @steaming_in_progress = false
    @heating_in_progress = false
  end

  def add_rice
    if !@rice_present
      @rice_present = true
      puts 'Rice has been added.'
    else
      puts 'There\'s already rice in the rice cooker.'
    end
  end

  def cook_rice
    if @rice_present && !@rice_cooked
      puts 'Cooking rice...'
      sleep(3)
      @rice_cooked = true
      puts 'The rice has been cooked!'
    elsif !@rice_present
      puts 'Cannot cook. The rice cooker is empty.'
    else
      puts 'The rice is already cooked.'
    end
  end

  def steam
    if @rice_present && !@steaming_in_progress
      puts 'Steaming in progress...'
      sleep(2) # Simulating steaming for 2 seconds
      @steaming_in_progress = true
      puts 'Steaming completed!'
    elsif !@rice_present
      puts 'Cannot steam. The rice cooker is empty.'
    else
      puts 'Steaming is already in progress.'
    end
  end

  def keep_warm
    if @rice_present && @rice_cooked && !@heating_in_progress
      puts 'The rice is now being kept warm.'
      @heating_in_progress = true
    elsif !@rice_present
      puts 'Cannot keep warm. The rice cooker is empty.'
    elsif !@rice_cooked
      puts 'Cannot keep warm. The rice is not cooked.'
    else
      puts 'Keeping warm is already in progress.'
    end
  end

  def remove_rice
    if @heating_in_progress
      puts 'Cannot remove rice. The rice cooker is in keep warm mode.'
    elsif @rice_present && (@rice_cooked || @steaming_in_progress)
      @rice_present = false
      @rice_cooked = false
      puts 'The rice has been removed from the rice cooker.'
    else
      puts 'There\'s no rice to remove or it is not cooked yet.'
    end
  end
end

def display_menu
  puts "\nWelcome to the Rice Cooker Simulator!"
  puts '1. Add rice'
  puts '2. Cook rice'
  puts '3. Steam'
  puts '4. Keep warm'
  puts '5. Remove rice'
  puts '6. Quit'
end

def simulate_rice_cooker
  rice_cooker = RiceCooker.new

  loop do
    display_menu
    print 'Enter your choice: '
    choice = gets.chomp.to_i

    case choice
    when 1
      rice_cooker.add_rice
    when 2
      rice_cooker.cook_rice
    when 3
      rice_cooker.steam
    when 4
      rice_cooker.keep_warm
    when 5
      rice_cooker.remove_rice
    when 6
      puts 'Thank you for using the Rice Cooker Simulator. Goodbye!'
      break
    else
      puts 'Invalid choice. Please select a valid option.'
    end
  end
end

class RiceCooker
  def initialize
    @rice_present = false
    @rice_cooked = false
    @steaming_in_progress = false
    @heating_in_progress = false
  end

  def add_rice
    if !@rice_present
      @rice_present = true
      puts 'Rice has been added.'
    else
      puts 'There\'s already rice in the rice cooker.'
    end
  end

  def cook_rice
    if @rice_present && !@rice_cooked
      puts 'Cooking rice...'
      sleep(3)
      @rice_cooked = true
      puts 'The rice has been cooked!'
    elsif !@rice_present
      puts 'Cannot cook. The rice cooker is empty.'
    else
      puts 'The rice is already cooked.'
    end
  end

  def steam
    if @rice_present && !@steaming_in_progress
      puts 'Steaming in progress...'
      sleep(2) # Simulating steaming for 2 seconds
      @steaming_in_progress = true
      puts 'Steaming completed!'
    elsif !@rice_present
      puts 'Cannot steam. The rice cooker is empty.'
    else
      puts 'Steaming is already in progress.'
    end
  end

  def keep_warm
    if @rice_present && @rice_cooked && !@heating_in_progress
      @heating_in_progress = true
      puts 'The rice is now being kept warm.'
    elsif !@rice_present
      puts 'Cannot keep warm. The rice cooker is empty.'
    elsif !@rice_cooked
      puts 'Cannot keep warm. The rice is not cooked.'
    else
      puts 'Keeping warm is already in progress.'
    end
  end

  def remove_rice
    if @rice_present && @rice_cooked)
      @rice_present = false
      @rice_cooked = false
      puts 'The rice has been removed from the rice cooker.'
    elsif @rice_present && @steaming_in_progress
      @rice_present = false
      @steaming_in_progress = false
      puts 'The rice has been removed from the rice cooker.'
    elsif @rice_present && @heating_in_progress
      @rice_present = false
      @heating_in_progress = false
      puts 'The rice has been removed from the rice cooker.'
    else
      puts 'There\'s no rice to remove or it is not cooked yet.'
    end
  end
end

def display_menu
  puts "\nWelcome to the Rice Cooker Simulator!"
  puts '1. Add rice'
  puts '2. Cook rice'
  puts '3. Steam'
  puts '4. Keep warm'
  puts '5. Remove rice'
  puts '6. Quit'
end

def simulate_rice_cooker
  rice_cooker = RiceCooker.new

  loop do
    display_menu
    print 'Enter your choice: '
    choice = gets.chomp.to_i

    case choice
    when 1
      rice_cooker.add_rice
    when 2
      rice_cooker.cook_rice
    when 3
      rice_cooker.steam
    when 4
      rice_cooker.keep_warm
    when 5
      rice_cooker.remove_rice
    when 6
      puts 'Thank you for using the Rice Cooker Simulator. Goodbye!'
      break
    else
      puts 'Invalid choice. Please select a valid option.'
    end
  end
end

simulate_rice_cooker
