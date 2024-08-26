Concepts Synthesis

# Table of Contents

- [Table of Contents](#table-of-contents)
- [What's this](#whats-this)
- [Why this?](#why-this)
- [Non-InThisFile Items](#non-inthisfile-items)
- [When getting into a new programming language](#when-getting-into-a-new-programming-language)
  - [Dev Tools Availability : Language Service Provider](#dev-tools-availability--language-service-provider)
  - [Compiled vs Interpreted](#compiled-vs-interpreted)
  - [Error Handlings (Strategies)](#error-handlings-strategies)
  - [Composition](#composition)


# What's this

An attempt to synthesize concepts about programming in a way that 
would let anyone reading about the concept wouldn't feel as lost as like I once did 
when I first touched upon them. (August 2024) 

# Why this?

I loved how easy it felt to write in `.md`so I wanted to push it further by trying to use it as a sort of
documentation or tool to share knowledge in a not so cumbersome way.

# Non-InThisFile Items

<!-- TODO: detail this header's content and purpose -->

- [Design Patterns][P-DD] 


# When getting into a new programming language

Getting into any new language to get a feel about it isn't really straightforward. Every comment 
about some particular language you read will 9 out of 10 have some bias in it, or have some
poor soul wrecked to smithreens by it leaving a empty and broken unfulfilled soul of his former self.

Let me present a (incomplete) list of what's some topics to learn when getting into a new language.

## Dev Tools Availability : Language Service Provider

>  Figure out how developed is the language's LSP (could also be linter or some Auto-completion)

A proper and well developed LSP for your IDE of choosing makes your development experience
magnitudes sasier and smooth. A LSP conceptually is an application that latches to your application.
It has an advantage over simpler linters or auto-completion since it knows your language at a 
semantic level. **For example**: editing a static variable's name will(or should(?)) edit all instances where
where you call said static, but also is smart enough to not replace a function's local static which coincidentally
happens to have the same name.

## Compiled vs Interpreted

> Do you need an Interpreted Language or Compiled Language?

Let's call **Interpreted Languages** as "write fast and crash fast". They often are dynamically typed 
(no distinction between types are enforced), and Garbage Collected. However do take into account that
often it is not easy to guarantee code integrity because refactoring often won't trigger 
"Compilation Errors", and aren't guaranteed to crash fast your program.

Also error paths are to be given more careful thoughts because in a bad exception 
case(i.e. cursed non-deterministic Exception) might wake you up in a Saturday morning at 3am.

As for exceptions in **Compilers** they legit suffer from the same fate lol. However due to better 
Compile-time Guarantees, they can reduce plethora of runtime errors/exception. Their vanilla performance
leagues better than interpreted languages. However you would often need to rely on Incremental Compilation
features to make iteration in compiled languages faster at expense of disk space.

**Considerations:**
- How verbose or cryptic are the error messages?
- Does the compiler offer any suggestions or autofixes?
- Is the compilation time reasonable?
- Are there options for incremental compilation or hot-reloading?

## Error Handlings (Strategies)

> Learn the idiomatic way to deal with errors

Different programming languages uses different strategies for their error handling. Users often get so 
creative with it (second hand experience with exceptions) that they perform (cursed) control flow with it.

List of strategies

* Exceptions.
* Monad-like Errors.
* Tuple-like Errors.
* Null Objects
* Magic Number (Please don't do this... not for me, but at least for your future self)

## Composition

> Learn how to compose structs, separate source code in modules, and how to best organize the code.

Different languages have different paradigms (Object-Oriented, Functional, Procedural, etc.) which affect how you design your programs.
specially so if you try to get an idiomatic program.

OOP languages often have this easy escape-hatch called inheritance. Inheritances makes it really easy to define your struct, but defaulting 
to [inheriting the banana with the underlying jungle][GorillaAndJungle] just plainly wanting to shoot yourself in the foot in the future.
Worth to share, but if you can, make your inherited struct final unless there's a really good reason to want to let the possibility
of extending your new class/struct.



[P-DD]: Programming%20-%20Design%20Patterns.md

[GorillaAndJungle]: https://medium.com/codemonday/banana-gorilla-jungle-oop-5052b2e4d588 "Gorilla holding the banana and the entire jungle."


