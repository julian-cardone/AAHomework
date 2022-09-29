def advil?(topic_covered_in_class_today)
    return true if topic_covered_in_class_today == "recursion"
    false
end

p advil?("recursion")
p advil?("any other topic")
    