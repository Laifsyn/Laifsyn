
***Table of Contents***
- [Gotchas: Let the type system figure it out for you](#gotchas-let-the-type-system-figure-it-out-for-you)

# Gotchas: Let the type system figure it out for you

**TLDR:** Don't be explicit with borrowed types

I had this weird issue with the lifetimes in a closure with the output reference not living long enough. 

```rust
fn parse(val: &str) -> Option<&str> {
    Some(val)
}
let parse_unit2 = |unit: &str| parse(unit); // Wrong(?): Compiler isn't inserting the correct lifetimes here.
let parse_unit1 = |unit| parse(unit); // Ok: compiler figures out the correct lifetimes.

println!("{:?}", parse_unit2("hello") == parse_unit1("hello"));

// Compiler Error:

error: lifetime may not live long enough
 --> src/main.rs:5:36
  |
5 |     let parse_unit2 = |unit: &str| parse(unit);
  |                              -   - ^^^^^^^^^^^ returning this value requires that `'1` must outlive `'2`
  |                              |   |
  |                              |   return type of closure is Option<&'2 str>
  |                              let's call the lifetime of this reference `'1`

error: could not compile `playground` (bin "playground") due to 1 previous error

```