pragma ton-solidity >= 0.45.0;

contract Giver {
    function pay(address addr, uint128 count) public pure {        
	    tvm.accept();
        
        uint128 balance = 111000000000;

        if (count == 0 || count >= balance) {
            addr.transfer(balance, false, 3);
        } else {
            addr.transfer(count, false, 3);
        }
    }
}