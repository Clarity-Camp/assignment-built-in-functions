
import { Clarinet, Tx, Chain, Account, types } from 'https://deno.land/x/clarinet@v0.31.0/index.ts';
import { assertEquals } from 'https://deno.land/std@0.90.0/testing/asserts.ts';

Clarinet.test({
    name: "Ensure that <...>",
    async fn(chain: Chain, accounts: Map<string, Account>) {
        const deployer = accounts.get("deployer")!.address

        const shipper = accounts.get("wallet_1")!.address

        let block = chain.mineBlock([
            Tx.contractCall(
                "practice-contract-calls",
                "update-shipment",
                [types.uint(1), types.ascii("shipped")],
                shipper    
            )
        ]);
        assertEquals(block.receipts.length, 1);
        assertEquals(block.height, 2);

        const result = block.receipts[0].result
        result.expectOk().expectTuple()

    },
});
