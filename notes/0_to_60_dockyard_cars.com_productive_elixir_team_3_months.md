# How Cars.com Made a Productive Elixir Team in 3 Months

Mike Bins (Dockyard), Daniel Mackey (Cars.com)

## Buy vs Build (Software solutions)

Cars.com mostly _bought_ software solutions, decided they needed to start building their own stuff.

- Moved from Java to Elixir.
- OOP to FP

## Executing the Change

- They made it explicit to the business what they wanted to do. (Longform paper)
- They split into 2 teams: one building the new Elixir stack, the other maintaining the old stack. (Allows Elixir team to give it their full focus.)
- Psychological side:
  - Empathy -- People who built whole identity / skill set around Java.
  - Understand motivational drivers (affiliation, achievement, recognition)
  - Growth/learning first, perfection second.
  - Regular check ins with team members.
- Building out the team
  - Growth mindset
  - Seek diversity (of origins, experiences, etc)
  - Think distributed (to pull talent from all over the US)
- Learning Elixir
  - https://exercism.io/
  - Breakable toys and exploration
    - They all built a baby due date guessing game app, explored things like migrations, auth, front end side of phoenix, etc
- Working with each other
  - formatter, credo, dialyzer on CI
  - Pairing
- Consulting with experts
  - They paid for like, Jose to take a look at their stuff and give feedback.
  - Dockyard consulted *heavily* for them.
  - Mike Bins, Chris McCord, and Paul Schoenfelder came on premesis.
  - They told Dockyard, "if we rebuild the old system in Elixir this project will be a failure."
  - Dockyard: How to teach 20+ engineers a brand new language and ecosystem / etc?
    - Mob coding! One engineer codes and the rest watch comment and ask questions.
    - Dockyard engineers could speak to possible alternatives or additional thoughts.
    - Entire team got on the same page regarding suggested patterns.
    - "Fixtures vs Factories" ???
  - Mob coding week:
    - Prepped with a real-world example (not just another todo list)
    - Prepared, but live experience
    - 7 2-hour sessions
    - Everyone on Zoom (even when in person)
    - VSCode live share
  - Week after Mob programming week
    - mob |> mini_mob |> pairs |> individuals
- Accomplishments
  - Trained team were able to effectively onboard and train new members
  - Did things more simply than they were in the Java app (multiple systems involved, etc -- done simpler in Elixir)
    - Something that would have taken weeks/months in the old system, built in a few days
- Hard parts
  - Mob programming was exhausting
  - Interviewing was ... (harder?)
  - YMMV
