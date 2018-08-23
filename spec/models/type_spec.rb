require "spec_helper"

describe Type do 
	let(:type) { subject }

	it "has many bikes" do 
		bike = Bike.create
		type.bikes << bike
		type.save

		expect(bike.type).to eq(type)
	end

	it "has many trails" do 
		trail = Trail.create
		type.trails << trail
		type.save

		expect(trail.type).to eq(type)
	end

	it "has many events" do 
		event = Event.create
		type.events << event
		type.save

		expect(event.type).to eq(type)
	end
end