- 👋 Hi, I’m @Laifsyn
- 👀 I’m interested in ... learning new things and Rust
- 🌱 I’m currently learning ... on how to write an UI and backend
- 💞️ I’m looking to collaborate on ... Interesting projects
- 📫 How to reach me ... GitHub (I guess?)

I found myself enjoying socializing overall. I believe knowing different perspectives can help me to 
come up with different ideas that wouldn't have been possible with just me alone.

# Table of Contents
- [Table of Contents](#table-of-contents)
- [Summary of Experiences (Of varying levels)](#summary-of-experiences-of-varying-levels)
  - [Frontend and Graphic Interfaces](#frontend-and-graphic-interfaces)
  - [Back-End](#back-end)
- [Programming Languages](#programming-languages)
  - [(Beginnings) Scripting Languages](#beginnings-scripting-languages)
  - [Rust (First half of 2023 - Present Time) ](#rust-first-half-of-2023---present-time-)
    - [What's Rust?](#whats-rust)
    - [Dev Tools](#dev-tools)
    - [What I learned from Rust](#what-i-learned-from-rust)
    - [Opinion  on Rust](#opinion--on-rust)
    - [Current Projects](#current-projects)
  - [Java (Second half of 2023 - \<2024.5)](#java-second-half-of-2023---20245)
    - [Comments](#comments)
- [Small Personal Projects](#small-personal-projects)
  - [Simple Summary of projects Source Code into a `.md` file AHK](#simple-summary-of-projects-source-code-into-a-md-file-ahk)


# Summary of Experiences (Of varying levels)
All experience has been mostly been obtained through exploratory learning. I still think there's more to learn
from actual experts, and still lot's of space to improve from practical experience.
  * Programming in General
    * Back-End
    * DevOps
    * CI
    * Database
    * Writing Documentation
    * User Interface
    * Data Structures
    * Code Architecture and Design
  * Languages (With pretty decent level of expertise)
    * [Rust][homepage:rust]
    * Java
    * Scripting Languages in general (Mainly AHKv2)
    * Spanish > English > Chinese

## Frontend and Graphic Interfaces 

I've worked with Java's Swing library on some simple rendering of some tabular-like 
report data, and simple input components.

I have some knowledge about the nuances between [IM][IM]-GUIs and [RM][RM]. 
Regarding website frontend, I recognize importance of strategies related to `Server Side Rendering (SSR)` or `Search Engine Optimization (SEO)` 
which are important to improve public visibility in search engines.


I have a rough idea what're on how to work with some [Rust][homepage:rust]-based GUI libraries like 
[Dioxus][git:dioxus], [egui][git:egui], [tauri][git:tauri](App Bundler) as well as templating
libraries like [Handlebars][git:handlebars], and hence I have a somewhat clear idea in what
 situation each of these tools are **more** fit to solve a particular issue in the field.

I also dealt with [Svelte][git:svelte] due to testing projects with [tauri][git:tauri]. Svelte seems to be 
a pretty good of a framework, with relatively lean learning curve, and is really loaded with 
batteries(which is good).

## Back-End

There's a handful of Web Frameworks in Rust. I've researched a bit about each of them, and among them
exists [Rocket][git:rocket], [Actix-Web][git:actix-web] as well as [Axum][git:axum], which was built
on top of `Hyper`. I currently chose to learn `Axum` mainly because of its modularity promises. 
A disadvantage of using `Axum` that I have considered was the not so straightforward way to generate
type-safe OpenApi documentation. A detail which differs from frameworks that defines endpoints via macros 
like `Actix` or [Salvo-rs][homepage:salvo] which seems to simplify the Docs generation of the functions.

[homepage:salvo]: https://salvo.rs/ "Salvo-rs Homepage"
[git:rocket]: https://github.com/rwf2/Rocket 
[git:actix-web]: https://github.com/actix/actix-web 
[git:axum]:https://github.com/tokio-rs/axum "Framework built upon Hyper"

# Programming Languages

## (Beginnings) Scripting Languages

I've first programming as some copy&paste `.bat` scripts to spam an ok message in windows back in 2016. By 2018 I got to get a hand on scripting language of AutoHotkey(v1.1) for windows because I was bored and thought I could try to make some scripts to automate small and simple tasks of the time I was using the computer. I still remember how I thought that EnvSet was updating an object's instance field data. Needless to say, all those scripts I've written are an horror of a monolith which a small change upstream was almost guaranteed to break something down in the script's execution.

## [Rust][homepage:rust] (First half of 2023 - Present Time) <!--  [$^{details}$][local:RustDetails] -->

### What's Rust?
It's a young([2015](https://en.wikipedia.org/wiki/Rust_(programming_language) "Stabilized on 2015")) general purpose System's Programming language with a rich type system and an ownership model which can guarantee safe memory management without the need of relying on a Garbage Collection system. In my opinion it overall has made awesome design decisions, something only possible by learning from mistakes that has been done.

### Dev Tools

I really love [LSP][lsp]. LSP even though not crucial for Rust, however it does make developing really comfortable.

### What I learned from Rust
* Closure vs Functions vs Methods
* Design Patterns like `Newtype`, `Singleton`, `Functional Programming`, `Composition`...
* Borrow Checker
* How to make sense of documentation in general.
* Writing Markdown
* Tests
* Benchmarks
* Async Programming in General (i.e. `Concurrency` vs `Parallelism` & `Deadlocks`)
* Traits Semantics. (Loosely interpretable as Interfaces in Java or C#(?))

**The Borrow Checker:** Think about `"Why you can't a return a pointer to a local variable in C"`, 
and you will find out that the Borrow Checking is something we always have been doing, but just embedded at the 
Language Level. The reason why I think people find the borrow checker as a nuisance would be because we were 
allowed from the start to not need to bother about lifetimes or reference invalidation, or even no guarantees 
were in place for pointer aliasing. It was just so "easy" to know when a reference doesn't live long enough 
that we didn't "bother" to properly learn about "Borrow Checking" in languages like `C` or `C++`. 
(But to be fair old-time computers weren't really fit to do so many compile-time checks)

### Opinion  on Rust

`Rust` is undoubtedly a complex language, however this arises from its design choices to enforce safety and performance at the language level. I believe this complexity is `needed` because it provides powerful guarantees that are hard to achieve with other languages. For example,Rust's ownership model makes me think more deeply about the "responsibilities" of my data. It's no longer `"Anyone can be the owner"` but instead `"What the owner allows"`.

The learning process can be improved by actively participating at Rust communities to get answers, and even learn from
often fresh ideas that often times would be ignored had you chosen to brute force learn `Rust` by yourself.

### Current Projects

- File Tagger and a simple File Explorer which displays only relevant data.
- Working with Tauri to build an App (Details deliberately omitted)

## Java (Second half of 2023 - <2024.5)

### Comments
- Upgrade your Java version to 21 or higher if you're learning. 
- Graphic Interfaces in Java are awful, but at least helps me to understand how to work with callbacks.
- Records are really awesome for Not-mutable objects/structs as well as emulating enums when you use `sealed Interfaces.
- I don't know why it was hard for me to understand the difference between `abstract Class` vs `Class`.
- Maybe Rust would be more fitted to teach low level Systems Programming Data Structs than Java.
- Circular References mistakes feels awry easy to commit in Java since there's no clear Owner (also no [`Weak`](https://doc.rust-lang.org/std/rc/struct.Weak.html "RC Weak Reference") reference).
- I disliked Eclipse's IDE.
- Why so many build tools? (I still can't get to differentiate advantages of Maven vs Gradle)
- Use Intelli's IDE to get started in java.
- Don't accidentally 'mistook' Intelli's paid IDE vs the free Community Version button hidden below by scrolling further down (I honestly thought I was seeing the page's Footend and not another download section).
# Small Personal Projects

These projects are some small projects I had done. They should be solution for small niche problems, where... chances are, there's way better alternatives.

## Simple Summary of projects Source Code into a `.md` file [AHK][local:source_code_summary]

Reads (for now java) source code files and paste it at N-nested Heading into a single `.md` file. 
The purpose was to be able to copy and paste the rendered html into a word, and have a poor-man tool to navigate
source code with a PDF viewer or Word Document viewer, making use of the headings that get pasted from the `.md` file.


<!-- Local links -->
[local:source_code_summary]: /projects/autohotkey/sum_up_source_codes
[local:RustDetails]: learning%20notes/languages/rust.md "A deeper discussion about my Rust experience"

<!-- Definition Links -->
[IM]: https://en.wikipedia.org/wiki/Immediate_mode_(computer_graphics) "Inmmediate Mode"
[RM]: https://en.wikipedia.org/wiki/Retained_mode "Retained Mode"
[lsp]: https://www.reddit.com/r/vim/comments/lt6vln/is_there_a_difference_between_a_lsp_code/ "reddit: LSP vs Linter vs Autocompeltion"

<!-- Git Repos Links -->
[git:handlebars]: https://github.com/sunng87/handlebars-rust "Text Templating Library"
[git:dioxus]: https://github.com/dioxuslabs/dioxus "Reactive(?) GUI Library"
[git:egui]: https://github.com/emilk/egui "IM GUI Library"
[git:tauri]: https://github.com/tauri-apps/tauri "App Bundler"
[git:svelte]: https://github.com/sveltejs/svelte "JS Framework that looks somewhat similar to vanilla HTML"


<!-- Homepages -->
[homepage:rust]: https://www.rust-lang.org/ "Rust Homepage"

<!---
Laifsyn/Laifsyn is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
