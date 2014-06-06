require_relative "my_solution"

describe 'accountability_method' do
	let (:title1) {"The First Shogun"}
	let (:topic1) {"Tokugawa Ieyasu"}
	let (:date1) {1603}
	let (:thesis_statement1) {"His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years."}
	let (:pronoun1) {"male"}

  it "is defined as a method" do
    defined?(essay_writer).should eq "method"
  end

  it "requires five arguments" do
    method(:essay_writer).arity.should eq 5
  end

  it "original example" do
    essay_writer(title1, topic1, date1, thesis_statement1, pronoun1).should eq "The First Shogun
  Ieyasu Tokugawa was an important person in 1603. He did a lot. I want to learn more about him. His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years. Tokugawa's contribution is important."
  end

end