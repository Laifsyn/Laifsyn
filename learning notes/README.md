# What's this

An attempt to synthesize concepts about programming in a way that 
would let anyone reading about the concept wouldn't feel as lost as like I once did 
when I first touched upon them. (August 2024) 

# Why this?

I loved how easy it felt to write in `.md`so I wanted to push it further by trying to use it as a sort of
documentation or tool to share knowledge in a not so cumbersome way.

# Non-InThisFile Items

- [Design Patterns][P-DD] 


# What to-do or know about when getting into any(?) programming language?

Getting into any new language to get a feel about it isn't really straightforward. Every comment 
about some particular language you read will 9 out of 10 have some bias in it, or have some
poor soul wrecked to smithreens by it leaving a empty and broken unfulfilled soul of his former self.

I would say these are some steps (if not unordered list of topics)(And hopefully generic enough) you 
would need to know to get a rough feeling about the language (I'll try to be as objective as possible)

## Feel the Compiler??

Have you heard of `Makefile`, `Cmake` or whatever in C++? Yes I did. Do I know them. Not really. I only
so far know that C++ is in a nutshell a bunch of compilers that provide an "std" library that might spits out
different assemblies depending on whose compiler you chose to compile your [source code][dict:source_code]

Trying to extrapolate the feel to the compiler's (or linter/[LSP][dict:LSP] [$^{[?]}$][def:LSP-reddit] for languages like python)
feedback can give you an idea on how much friction you would have when first starting the language.
Some grandiose error compiler error will let you iterate fast (or crash fast) your program. 
Effects might vary depending on how deep is your knowledge for programming in general.

## Composition

Understanding how applying composition is one of the basic building blocks for an scalable code architecture. 
Inheritances makes it really easy to get structs done, but defaulting to [inheriting the banana with the underlying jungle][GorillaAndJungle] 
is preparing a stinky bomb waiting to blow at you, and make you curse at your older self.

If the language's way of applying composition clicks with you, then you could consider the language. 



[P-DD]: Programming%20-%20Design%20Patterns.md

[dict:source_code]: README.md "Often a 'readable' code that will be compiled into binaries or bytecodes"
[dict:LSP]: README.md "Language Service Provider"
[def:LSP-reddit]: https://www.reddit.com/r/vim/comments/lt6vln/is_there_a_difference_between_a_lsp_code/ "(2020) Linter, LSP & Code-Completer differences"
[GorillaAndJungle]: https://medium.com/codemonday/banana-gorilla-jungle-oop-5052b2e4d588 "Gorilla holding the banana and the entire jungle."


