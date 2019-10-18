# Debugging 101


## The Five Parts of Debugging and the Debugging Tools

There are five parts to the debugging workflow:


Discover. Identify a problem.

Locate. Determine where in the code the problem occurs.

Inspect. Examine the control flow and data structures of the running code to find the cause of the problem.

Fix. Apply your insight into the cause of the problem to devise a solution, and edit the code to suit.

Confirm. After editing, run the app and check it with the debugger to be sure the fix was successful.

The division of labor in these five parts of debugging are not necessarily reflected in the specifics of the debugging tools, although some tools are more pointed at discovery (for instance, the debug gauges), some are particularly useful for dealing with locations of interest in your code (breakpoints), and others are more specific to inspection (the debug area’s variables view and the debug navigator’s process view).


Think of the debugging tools as addressing the five parts of debugging more as a function of how you use them. For instance, you use the Quick Look feature to inspect the state of a graphical object as you work through a problem, but you can also think of it as being a discovery tool, using it to see how a complex graphic is “assembled” as you iterate through a set of drawing calls. In other words, how you put a tool to work for you often determines which part of the debugging effort it addresses, and it is the combination of what the tool does, what data using it uncovers, and your creative insight into the context of the situation that delivers success to your debugging efforts.


## LLDB and the Xcode Debugger

The Xcode debugger uses services and functions provided by LLDB, the underlying command-line debugger that is part of the LLVM compiler development suite. LLDB is tightly integrated with the compiler, which enables it to provide the Xcode debugger with deep capabilities in a user-friendly environment. The Xcode debugger provides all the functionality needed for most debugging situations, but a little familiarity with LLDB can be helpful. For a basic introduction to LLDB, see LLDB Quick Start Guide.



## Types of Breakpoints


### Swift Error Breakpoint


### Exception Breakpoint

triggered when a specific type of exception is thrown or caught


### Open GL ES Error Breakpoint

 a specialized type of breakpoint used in the Open GL ES debugging tools, it is a derivative of a symbolic breakpoint.
 
 Further reading: 
 https://developer.apple.com/library/archive/documentation/3DDrawing/Conceptual/OpenGLES_ProgrammingGuide/Introduction/Introduction.html#//apple_ref/doc/uid/TP40008793
 

### Symbolic Breakpoint

triggered when a specific method or function is called.


### Constraint Error Breakpoint



### Test Failure Breakpoint

specialized type of breakpoint used in debugging Xcode tests

 Further reading: https://developer.apple.com/library/archive/documentation/DeveloperTools/Conceptual/testing_with_xcode/chapters/01-introduction.html#//apple_ref/doc/uid/TP40014132

## Source

https://developer.apple.com/library/archive/documentation/DeveloperTools/Conceptual/debugging_with_xcode/chapters/debugging_tools.html#//apple_ref/doc/uid/TP40015022-CH8-SW2


