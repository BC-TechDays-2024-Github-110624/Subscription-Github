codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        pba_test();
        RLAN_Test();
        JW_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    local procedure pba_test()
    var
        PBA_Test: Record "PBA Test";
    begin
        PBA_Test.Code := 'PBA';
        PBA_Test.Description := 'PBA Test';
        if PBA_Test.Insert() then;
    end;

    local procedure RLAN_Test()
    var
        RLANTest: Record "RLAN Test";
    begin
        RLANTest.Code := 'RLAN';
        RLANTest.Description := 'René';
        if RLANTest.Insert() then;
    end;

    local procedure JW_Test()
    var
        MyTable: Record MyTable;
    begin
        if not MyTable.IsEmpty() then
            exit;
        MyTable.Init();
        MyTable.Code := 'JW';
        MyTable.Description := 'Jens Winberg';
        MyTable.Insert();
    end;
}