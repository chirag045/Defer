What is Defer? => The defer statement is used to execute a set of statements before the code execution leaves the current block of code.

This is useful for performing necessary cleanup tasks, Note that defer used LIFO Last In First out so we can tell its execute from last defer if there will multiple defer in same block.

