require_relative "../../test/test_helper"

DataLoader.questions_from_csv
DataLoader.strands_from_csv
DataLoader.standards_from_csv

puts Question.build_quiz
