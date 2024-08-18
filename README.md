- 👋 Hi, I’m @Laifsyn
- 👀 I’m interested in ... learning new things and Rust
- 🌱 I’m currently learning ... on how to write an UI and backend
- 💞️ I’m looking to collaborate on ... 
- 📫 How to reach me ... GitHub (I guess?)

I found myself enjoying socializing overall. I believe knowing different perspectives can help me to 
come up with different ideas that wouldn't have been possible with just me alone.

# Summary of Experiences (Of varying levels of expertise)
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
    * Rust
    * Java
    * Scripting Languages in general (Mainly AHKv2)
    * Spanish > English > Chinese

## Frontend 

I have some experience designing UIs which I've overdoing university projects, but I still lack any formal education related
to UI Design outside of "Make it as user-friendly as posssible".

## Back-End

I've as lately been particularly interested on back-end related topics. I've been working on self projects tinkering with logging 
(and hopefully soon with async tracing), code architecture and design, write of robusts tests, develop Domain Driven Design (DDD in short), 
as well as familiarizing myself with the sane ways to make swift deployments of new releases.

Major Topics I'm still haven't gotten to properly understand yet are among it; managing encrypted communication, and properly exposing a public API. 
(Plus others that I might not know yet)

## Programming Languages

I've first programming as some copy&paste `.bat` scripts to spam an ok message in windows back in 2016. By 2018 I got to get a hand on scripting language of AutoHotkey(v1.1) for windows because I was bored and thought I could try to make some scripts to automate small and simple tasks of the time I was using the computer. I still remember how I thought that EnvSet was updating an object's instance field data. Needless to say, all those scripts I've written are an horror of a monolith which a small change upstream was almost guaranteed to break something down in the script's execution.

### [Rust](https://www.rust-lang.org/) (First half of 2023 - Present Time)
***Short Introduction***: Rust is a young([2015](https://en.wikipedia.org/wiki/Rust_(programming_language) "Stabilized on 2015")) general purpose System's Programming language with a rich type system and an ownership model which can guarantee safe memory management without the need of relying on a Garbage Collection system. In my opinion it overall has made awesome design decisions, something only possible by learning from mistakes that has been done.

##### Dev Tools (+ Community) are Important for learning
It's possible to program in Rust without tools like Rust Analyzer, but you would in my opinion be like programming in Python, but having it crash every single time before you even get to run the first line in Main(due to compiler errors). Rust Analyzer is really important to get instant feedback from the compiler of whether one is doing something wrong, however even if you know you are getting something wrong by the compiler, it's still really needed to have someone more experienced to help you explain why what you're doing is wrong. 

I would often get wrong `Iterator::into_iter()` vs `Iterator::iter_mut()` just to mention a one case of me getting confused.

##### Some things I've learned 
* What's different between a Closure and a Function?
* Have a slight idea on when I would want to receive a Closure as Function's argument.
* Difference between Functions and Methods (I felt very vexed at Java's Instance Function vs Static Functions seemingly similar syntax)
* Design Patterns like Singletons, Iterators....
* Borrow Checker (Originally hard to push through, but maybe 10-18 hours of practice are enough to get accustomed to it)
* Navigate through documentation.
* Writing Markdown
* Tests
* Benchmarks
* Async Programming in General (i.e. Concurrency vs Parallelism + Deadlocks)
* Marker Trait's semantics like [`Sync`](https://doc.rust-lang.org/stable/std/marker/trait.Sync.html "Marker Trait") and [`Send`](https://doc.rust-lang.org/stable/std/marker/trait.Send.html "Marker Traits").

I would say I'm feel reasonably comfortable with the language, however there's still a long way until I can perform at the same level that maintainers of awesome libraries like `Hyper`, Tokio's team or `im`  maintainers whose code supports and contributes to the ecosystem development.

Currently working with Tauri for desktop app development seems pretty enjoyable. I can get to use High performant Rust code as the backend while using Svelte as the frontend, and also benefit from Hot Reload to fast iterate any bs I want to test in the UI. Also leveraging the help of LLM to allow me understand the purposes of some attributes, as well as some quirks in HTML & Javascript & CSS. 
##### Current areas of Programming I'm delving at (not necessarily in order)

* Fullstack: Backend and Frontend development
* Devops: CI/CD (Currently busied by other topics)
* Database: Learning some SQL for database communication as well as learning how to use [`sqlx`](https://github.com/launchbadge/sqlx "Database Library") for these purposes. 
* Desktop Apps: Currently using Tauri de bundle together a Desktop App. Multi platform libraries like [Dioxus](https://dioxuslabs.com/), [Flutter-rs](https://github.com/flutter-rs/flutter-rs) and [egui](https://www.egui.rs/) are currently at the back of my priorities because I haven't still figured how they work. However I had been interested on Dioxus relatively more due to the capability of SSR which could help improve SEO of a webpage

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

## Simple Summary of projects Source Code into a `.md` file [AHK][1]

Reads (for now java) source code files and paste it at N-nested Heading into a single `.md` file. 
The purpose was to be able to copy and paste the rendered html into a word, and have a poor-man tool to navigate
source code with a PDF viewer or Word Document viewer, making use of the headings that get pasted from the `.md` file.



[1]: /projects/autohotkey/sum_up_source_codes
<!---
Laifsyn/Laifsyn is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
