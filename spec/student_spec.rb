require "rspec"
require "./lib/student.rb"

describe Student do
  it "is an instance of student" do
    student = Student.new("Alec")

    expect(student).to be_a(Student)
  end

  it "has a name" do
    student = Student.new("Logan")
    student_2 = Student.new("Chase")

    expect(student.name).to eq("Logan")
    expect(student_2.name).to eq("Chase")
  end
end