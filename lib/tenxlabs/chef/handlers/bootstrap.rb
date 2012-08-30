require 'chef/handler'
require '10xlabs/microcloud'

module TenxLabs
	module Chef
		module Handlers
			class Bootstrap < Chef::Handler
				def initialize(endpoint)
					@microcloud = TenxLabs::Microcloud.new(endpoint)
				end

				def report
					@microcloud.submit_event :vm, @vm_id, :bootstrapped
				end
			end
		end
	end
end
