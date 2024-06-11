codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        BF_Test();
        AnRa_Test();
        pba_test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

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

    local procedure AnRa_Test()
    var
        ARA_Test: Record AnRa_Test;
    begin
        ARA_Test.Code := 'AnRa';
        ARA_Test.Description := 'Andreas Rascher';
        ARA_Test.Insert(true);
    end;

    local procedure pba_test()
    var
        PBA_Test: Record "PBA Test";
    begin
        PBA_Test.Code := 'PBA';
        PBA_Test.Description := 'PBA Test';
        if PBA_Test.Insert() then;
    end;
}