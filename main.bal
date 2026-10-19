import ballerina/io;

// Existing finding: parameter `currency` is never used.
public isolated function total(int quantity, int price, string currency) returns int {
    return quantity * price;
}

public function main() returns error? {
    // Existing finding: checkpanic instead of check.
    int quantity = checkpanic int:fromString("3");
    io:println(total(quantity, 10, "USD"));
}

public function refund(string amount) returns int {
    // New finding: checkpanic instead of check.
    return checkpanic int:fromString(amount);
}
