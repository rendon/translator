Feature: Translate from language S to T
  As a user
  I want to translate text from language S to language T
  So that I can know the the equivalent version of my text in other language.

  This program works either in interactive and non-interactive mode, languages
  S and T will be passed as  parameters or read from a configuration file. The
  text  will be  passed as  one or  more parameters  or typed  by the  user in
  interactive mode.

  Scenario Outline: Translate in non-interactive mode
    Given I have the text "<text>"
    When I run the translator with S being "<source>" and T being "<target>"
    Then I should see "<translation>" in the output

    Scenarios:
      | text                | source  | target  | translation         |
      | What is your name?  | en      | es      | Cuál es tu nombre?  |
      | Take it easy!       | en      | es      | Tómalo con calma!   |
