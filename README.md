
# assignment-built-in-functions
Practice some Clarity built-in functions 

This assignment focuses not only the keywords & built in functions but also the other concepts in conjunction with that and that would be functions, contract calls and storing and retrieving data. 

There are 3 Contracts which need completing the implementation
1. `practice-tuple`
2. `practice-map-keyword`
3. `practice-contract-calls`

Each one of the above are different and need completing the implementation. 

-----------------------------------------------------------------------------
### 1. TASKS for Contract `practice-tuple`
There is a fixed input tuple for this task and it would be used to implement 2 functions in the contract `practice-tuple`:

``` {
    id: u1, 
    employee: {
        name: "Stacker", 
        city: "Windy City", 
        language: "Python", 
        clubs: (list {id: u10, name: "Club 1"}
                     {id: u20, name: "Club 2"} 
                     {id: u30, name: "Club 3"}
               )
    }
}
```

- [ ] **_Task 1_** 
- **TODO:** Implement the function `get-employee-2nd-club-name-from-tuple` which fetches the 2nd club name for the employee from the _INPUT_TUPLE_

- **Example Call:** (contract-call? .practice-tuple get-employee-2nd-club-name-from-tuple)
- **Result:** `(ok "Club 2")`


- [ ] **_Task 2_**: 

- **TODO: **Implement the function `set-new-language-in-tuple` which updates the language for the employee from the _INPUT_TUPLE_ by appending `Buidl` to it and returns the updated tuple in the response
NOTE: the tuple defined above is a constant so you do not need to update the constant value

- **Example Call:** (contract-call? .practice-tuple set-new-language-in-tuple)
- **Result:** 
```(ok {
        id: u1, 
        employee: {
            name: "Stacker", 
            city: "Windy City", 
            language: "PythonBuidl", 
            clubs: (list {id: u10, name: "Club 1"}
                         {id: u20, name: "Club 2"} 
                         {id: u30, name: "Club 3"}
                    )
        }
    }
)
```
**NOTE:** The response values will be same but your response might look different and that would only be because the tuple is unordered. Whichever order you provide to the tuple, it is unordered and orders itself in alphabetical order. 


-----------------------------------------------------------------------------
### 2. TASKS for Contract `practice-map-keyword`




-----------------------------------------------------------------------------
### 3. TASKS for Contract `practice-contract-calls`
