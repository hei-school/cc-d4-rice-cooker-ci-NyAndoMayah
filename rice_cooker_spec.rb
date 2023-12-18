require_relative 'display_menu' # Assuming the file containing display_menu is in the same directory

RSpec.describe 'display_menu' do
  it 'displays the menu correctly' do
    expected_output = <<~OUTPUT
      Welcome to the Rice Cooker Simulator!
      1. Add rice
      2. Cook rice
      3. Steam
      4. Keep warm
      5. Remove rice
      6. Quit
    OUTPUT

    expect { display_menu }.to output(expected_output).to_stdout
  end
end
