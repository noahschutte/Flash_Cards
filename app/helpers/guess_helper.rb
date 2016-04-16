def compare_answer(card, response)
  card.answer.strip.downcase == response.strip.downcase
end
