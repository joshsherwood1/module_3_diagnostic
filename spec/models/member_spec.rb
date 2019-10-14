require "rails_helper"

describe Member do
  it "has attributes" do
    member = Member.new(name: "Joshua Sherwood", role: "Student", house: "Ravenclaw", patronus: "Penguin")

    expect(member).to be_a Member
    expect(member.name).to eq("Joshua Sherwood")
    expect(member.role).to eq("Student")
    expect(member.house).to eq("Ravenclaw")
    expect(member.patronus).to eq("Penguin")
  end
end
