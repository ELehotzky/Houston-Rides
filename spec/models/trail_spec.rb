require "spec_helper"

describe Trail do 
	let(:trail) { subject }

	it "belongs to a type" do 
		type = Type.create
		trail.type = type
		trail.save

		expect(type.trails).to include(trail)
	end
end