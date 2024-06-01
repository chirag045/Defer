///What is Defer? => The defer statement is used to execute a set of statements before the code execution leaves the current block of code.
///This is useful for performing necessary cleanup tasks, Note that defer used LIFO Last In First out so we can tell its execute from last defer if there will multiple defer in same block.

///I have add some example where FIFO execute. all example below

// MARK: - Single Defer

//Output -> Single 1, Single 3, Defer 2
func singleDefer(){
    print("Single 1")
    defer {
        print("Defer 2")
    }
    print("Single 3")
}

singleDefer()

// MARK: - Multiple Defer
//Output -> Defer 3, Defer 2, Defer 3
func multipleDefer(){
    defer { print ("Defer 1") }
    defer { print ("Defer 2") }
    defer { print ("Defer 3") }
}

multipleDefer()

// MARK: - For Loop Defer
//Output -> In i, Out i, Defer i

func forLoopDefer(){
    for i in 1...50 {
        print ("In \(i)")
        defer { print ("Defer \(i)") }
        print ("Out \(i)")
    }
}
forLoopDefer()

//MARK: - More Defer
//Output -> Start, Inside If, End 2, Loop Body 1, Loop 1, Loop Body 2, Loop 2, Finish, End 1
func moreDefer(){
    print("Start")
    defer { print("End 1") }
    
    if true {
        defer { print("End 2") }
        print("Inside If")
    }
    
    for i in 1...2 {
        defer { print("Loop \(i)") }
        print("Loop Body \(i)")
    }
    
    print("Finish")
}
