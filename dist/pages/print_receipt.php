<?php
require __DIR__ . '/../../vendor/autoload.php';

use Mike42\Escpos\Printer;
use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;

try {
    // Change this to your actual POS printer name (Find it in Control Panel -> Devices & Printers)
    $connector = new WindowsPrintConnector("POS-58");

    $printer = new Printer($connector);
    
    // Print receipt content
    $printer->setJustification(Printer::JUSTIFY_CENTER);
    $printer->text("ABC STORE\n");
    $printer->text("POS PAYMENT RECEIPT\n");
    $printer->text("------------------------------\n");
    $printer->setJustification(Printer::JUSTIFY_LEFT);
    $printer->text("Date: " . date("Y-m-d") . "\n");
    $printer->text("Time: " . date("H:i:s") . "\n");
    $printer->text("------------------------------\n");
    $printer->text("Item: Electronics\n");
    $printer->text("Amount: ₦50,000\n");
    $printer->text("VAT: ₦2,500\n");
    $printer->text("------------------------------\n");
    $printer->text("Total Paid: ₦52,500\n");
    $printer->text("Payment Method: Card\n");
    $printer->text("Approval Code: 123456\n");
    $printer->text("------------------------------\n");
    $printer->text("Thank you for your purchase!\n");
    $printer->feed(2);
    $printer->cut();
    
    // Close the printer
    $printer->close();

    echo "Receipt printed successfully.";
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>
