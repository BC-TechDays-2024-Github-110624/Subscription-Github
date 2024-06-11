codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        pba_test();
        RLAN_Test();
        BF_Test();
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

    local procedure BF_Test()
    var
        BFTest: Record BF_Test;
    begin
        BFTest.Init();
        BFTest.Code := 'BF';
        BFTest.Description := 'Beatrice Foffani';
        if not BFTest.Insert() then
            Clear(BFTest);
    end;
}