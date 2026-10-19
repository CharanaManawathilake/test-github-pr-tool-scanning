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

// Clean change: adds no finding.
public isolated function discount(int amount, int percent) returns int {
    return amount * (100 - percent) / 100;
}
