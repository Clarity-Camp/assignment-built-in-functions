
import { Clarinet, Tx, Chain, Account, types } from 'https://deno.land/x/clarinet@v0.31.0/index.ts';
import { assertEquals, assertStringIncludes } from 'https://deno.land/std@0.90.0/testing/asserts.ts';

const TUPLE_INPUT_1 = types.tuple({
    id: types.uint(1), 
    employee: types.tuple({
        name: types.ascii("Stacker"), 
        city: types.ascii("Windy City"), 
        language: types.ascii("Python"), 
        clubs: types.list([
                    types.tuple({id: types.uint(10), name: types.ascii("Club 1")}),
                    types.tuple({id: types.uint(20), name: types.ascii("Club 2")}),
                    types.tuple({id: types.uint(30), name: types.ascii("Club 3")}),
                ])
    })
})

const TUPLE_INPUT_2 = types.tuple({
    id: types.uint(1), 
    employee: types.tuple({
        name: types.ascii("Stacker"), 
        city: types.ascii("Windy City"), 
        language: types.ascii("Python"), 
        clubs: types.list([
                    types.tuple({id: types.uint(10), name: types.ascii("Club 1")}),
                ])
    })
})

Clarinet.test({
    name: "get-employee-2nd-club-name-from-tuple: Input 1 ",
    async fn(chain: Chain, accounts: Map<string, Account>) {
        const deployer = accounts.get("deployer")!.address

        let block = chain.mineBlock([
            Tx.contractCall(
                "practice",
                "get-employee-2nd-club-name-from-tuple",
                [TUPLE_INPUT_2],
                deployer    
            )
        ]);
        assertEquals(block.receipts.length, 1);
        assertEquals(block.height, 2);

        const result = block.receipts[0].result
        result.expectOk().expectSome()

        assertEquals(result, `(ok (some {id: u20, name: "Club 2"}))`)
    },
});

Clarinet.test({
    name: "get-employee-2nd-club-name-from-tuple: Input 2 ",
    async fn(chain: Chain, accounts: Map<string, Account>) {
        const deployer = accounts.get("deployer")!.address

        let block = chain.mineBlock([
            Tx.contractCall(
                "practice",
                "get-employee-2nd-club-name-from-tuple",
                [TUPLE_INPUT_1],
                deployer    
            )
        ]);
        assertEquals(block.receipts.length, 1);
        assertEquals(block.height, 2);

        const result = block.receipts[0].result
        result.expectOk().expectNone()

        assertEquals(result, `(ok none)`)
    },
});


Clarinet.test({
    name: "set-new-language-for-employee-in-tuple: Input 2",
    async fn(chain: Chain, accounts: Map<string, Account>) {
        const deployer = accounts.get("deployer")!.address

        let block = chain.mineBlock([
            Tx.contractCall(
                "practice",
                "set-new-language-for-employee-in-tuple",
                [TUPLE_INPUT_1],
                deployer    
            )
        ]);
        assertEquals(block.receipts.length, 1);
        assertEquals(block.height, 2);

        const result = block.receipts[0].result
        result.expectOk().expectTuple()

        assertStringIncludes(result, `language: "PythonBuidl"`)
    },
});

