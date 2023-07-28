#./config/initializers/audited.rb
require "audited"

Audited::Railtie.initializers.each(&:run)