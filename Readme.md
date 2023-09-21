# Transient Store Foundry Template

A foundry template with custom `solc` binaries (from [transient-storage](https://github.com/ethereum/solidity/tree/transient-store)) that supports transient storage opcodes in inline assembly.
```bash
forge build --use bin/solc
forge test  --use bin/solc
```

## Example contract

```solidity
contract SimpleTStore {
    function tstore(uint key, uint value) external {
        assembly {
            tstore(key, value)
        }
    }
    function tload(uint key) external view returns (uint value) {
        assembly {
            value := tload(key)
        }
    }
}
```
