# The Video

Object-Oriented Programming is Bad
By Brian Will
[https://www.youtube.com/watch?v=QM1iUe6IofM](https://www.youtube.com/watch?v=QM1iUe6IofM)

# The Crux of Why OOP Is Bad

Encapsulation doesn't deliver on its promise.

> Encapsulation does not work at fine-grained levels of code

[18:33](https://youtu.be/QM1iUe6IofM?t=18m33s)
If you truly encapsulate your application completely, you're left with a perfect tree hierarchy of classes. But then how do you handle cross-cutting concerns, where various leaves must "talk" to each other? You must talk all the way up the tree and then back down.

But that doesn't happen in reality, because it would be insanity -- **a nightmare to maintain**.

[25:37](https://youtu.be/QM1iUe6IofM?t=25m37s)
As a result, we architect this very structured "building", and then when cross-cutting concerns are introduced we end up "busting a bunch of holes in the walls like the Kool Aid guy". It becomes... **a nightmare to maintain**.

# So what instead of OOP? (Or, How to Code Well Procedurally)

Write procedural code!

- Don't necessarily avoid classes entirely.
- Write code out of plain functions.
- Don't attempt to encapsulate your program at a fine-grained level. It doesn't work.

Tips:

1. When in doubt parameterize functions instead of relying on global state.
2. Bundle globals into structs/records/classes.
3. Favor pure functions
4. Encapsulate *loosely* at the level of namespaces/packages/modules. (This still leaves you dealing with much larger units of code per package.)
5. **Don't be afraid of long functions.** (Even 100's of lines long.) Comment out the separate sections. (Or use nested functions or something.) Avoid/extract logical complexity. Constrain the scope of local variables to help with that.

> Pure functions are the only truly self contained unit of code

# Watch the Video!

These notes are a summary, but Brian Will says it better.
[https://www.youtube.com/watch?v=QM1iUe6IofM](https://www.youtube.com/watch?v=QM1iUe6IofM)
