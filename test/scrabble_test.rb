gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/emoji'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_two_letters
    assert_equal 2, Scrabble.new.score("as")
    assert_equal 5, Scrabble.new.score("if")
  end

  def test_it_can_score_five_letters
    assert_equal 8, Scrabble.new.score("tasty")
    assert_equal 8, Scrabble.new.score("waste")
  end

  def test_returns_zero_score_for_nil_or_empty_input
    assert_equal 0, Scrabble.new.score(nil)
    assert_equal 0, Scrabble.new.score("")
  end

  def nil_or_empty_returns_false_for_word_input
    refute nil_or_empty('r')
    refute nil_or_empty('poop')
  end

  def nil_or_empty_returns_true_for_nil_or_empty_input
    refute nil_or_empty(nil)
    refute nil_or_empty('')
  end

  def upcase_and_split_returns_array_of_letters_for_single_letter
    assert_equal 3, Scrabble.new.score("g")
    assert_equal 1, Scrabble.new.score("l")
  end

  def upcase_and_split_returns_array_of_letters_for_two_letter_word
    assert_equal 3, Scrabble.new.score("do")
    assert_equal 2, Scrabble.new.score("no")
  end

  def upcase_and_split_returns_array_of_letters_for_5_letter_word
    assert_equal 11, Scrabble.new.score("bendy")
    assert_equal 15, Scrabble.new.score("glaze")
  end

  def test_sum_points_can_sum_a_single_letter
    assert_equal 3, Scrabble.new.score("b")
    assert_equal 10, Scrabble.new.score("z")
  end

  def test_sum_points_can_sum_two_letters
    assert_equal 2, Scrabble.new.score("an")
    assert_equal 9, Scrabble.new.score("xi")
  end

  def test_sum_points_can_sum_five_letters
    assert_equal 7, Scrabble.new.score("troop")
    assert_equal 10, Scrabble.new.score("party")
  end


end
