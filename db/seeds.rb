# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Test multiple choices
MultipleChoice.create(
    question: "It concerns family history, __________ than the national or world history studied at school.",
    answer: "Rather",
    a: "Instead",
    b: "Rather",
    c: "Except",
    d: "Sooner"
)

MultipleChoice.create(
    question: "Tracing your family history can also __________ in learning about your roots and your identity.",
    answer: "Result",
    a: "Cause",
    b: "Mean",
    c: "Result",
    d: "Lead"
)

MultipleChoice.create(
    question: "The internet enables millions of people worldwide to __________ information about their family history.",
    answer: "Access",
    a: "Accomplish",
    b: "Access",
    c: "Approach",
    d: "Admit"
)

MultipleChoice.create(
    question: "However, the vast majority of people who __________ in the survey discovered they were better off than their ancestors.",
    answer: "Participated",
    a: "Attended",
    b: "Participated",
    c: "Included",
    d: "Associated"
)

MultipleChoice.create(
    question: "People who research their family history often __________ that it's a fascinating hobby.",
    answer: "Remark",
    a: "Describe",
    b: "Define",
    c: "Remark",
    d: "Regard"
)

# Test open clozes
OpenCloze.create(
    question: "I work __________ a motorbike stunt rider - that is, I do tricks on my motorbike at shows.",
    answer: "as"
)

OpenCloze.create(
    question: "The Le Mans race track in France was __________ I first saw some guys doing motorbike stunts.",
    answer: "where"
)

OpenCloze.create(
    question: "I have a degree __________ mechanical engineering.",
    answer: "in"
)

OpenCloze.create(
    question: "I never feel in __________ kind of danger because I'm very experienced.",
    answer: "any"
)

OpenCloze.create(
    question: "Columbus didn't succeed __________ finding the Spice Islands.",
    answer: "in"
)

# Test word formations
WordFormation.create(
    question: "Garlic, a member of the Liliacaea family which also includes onions, is __________ used in cooking all around the world.",
    answer: "commonly",
    keyword: "Common"
)

WordFormation.create(
    question: "China is currently the largest __________ of garlic.",
    answer: "producer",
    keyword: "Product"
)

WordFormation.create(
    question: "The forefather of antibiotic medicine, Louis Pasteur, claimed garlic was as __________ as penicillin in treating infections.",
    answer: "effective",
    keyword: "Effect"
)

WordFormation.create(
    question: "Modern-day __________ have proved that garlic can indeed kill bacteria and even some viruses.",
    answer: "scientists",
    keyword: "Science"
)

WordFormation.create(
    question: "In addition, some doctors believe that garlic can reduce blood __________.",
    answer: "pressure",
    keyword: "Press"
)

# Test keyword transformations
KeywordTransformation.create(
    question: "Joan was in favour of visiting the museum.",
    answer: "a good idea to go",
    keyword: "Idea",
    prompt: "Joan thought it would be ______________ to the museum."
)

KeywordTransformation.create(
    question: "Arthur has the talent to become a concert pianist.",
    answer: "talented that he",
    keyword: "That",
    prompt: "Arthur is so ______________ could become a concert pianist."
)

KeywordTransformation.create(
    question: "Do you know when the match starts, Sally?' asked Mary.",
    answer: "if she knew what",
    keyword: "If",
    prompt: "Mary asked Sally ______________ time the match started."
)

KeywordTransformation.create(
    question: "Everyone says that the band is planning to go on a world tour next year.",
    answer: "is said to be",
    keyword: "Said",
    prompt: "The band ______________ planning to go on a world tour next year."
)

KeywordTransformation.create(
    question: "I'd prefer not to cancel the meeting.",
    answer: "not call off",
    keyword: "Call",
    prompt: "I'd rather ______________ the meeting."
)

# Create doorkeeper application
if Doorkeeper::Application.count.zero?
    Doorkeeper::Application.create!(name: "Webapp", redirect_uri: "", scopes: "")
end
