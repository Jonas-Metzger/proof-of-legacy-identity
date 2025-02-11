pragma solidity ^0.8.3;
import "@opencontracts/contracts/OpenContractAlpha.sol"

contract ExampleContract is OpenContractAlpha("e6295f30c2eb24805ed2a1568935a2db73e0d33e26b2a12a84fbad908251b458") {
    
    string enclaveStorage;
    string userStorage;
    
    function saveFromEnclave (bytes32 oracleHash, string memory someString) public {
        requireOracle(oracleHash);
        enclaveStorage = someString;
    }

    function saveFromUser (string memory someString) public {
        userStorage = someString;
    }
}
