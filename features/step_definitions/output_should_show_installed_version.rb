# frozen_string_literal: true

Then("the output should show installed version") do
  expect(last_command_started).to have_output \
    output_string_eq "melotropy-cli v#{Melotropy::Cli::VERSION}"
end
