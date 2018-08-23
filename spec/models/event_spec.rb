require "spec_helper"

describe Event do 
	let(:event) { subject }

	it "belongs to a type" do 
		type = Type.create
		event.type = type
		event.save

		expect(type.events).to include(event)
	end
end