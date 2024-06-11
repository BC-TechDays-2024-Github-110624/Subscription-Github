codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        AOT_Test();
        // Instantiate variables needed for the extension
        AnRa_Test();
        pba_test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    local procedure AOT_Test()
    var
        AOT_Test: Record AOT_Test;
    begin
        AOT_Test.Init();
        AOT_Test.Code := 'AOT';
        AOT_Test.Description := 'Anton';
        if AOT_Test.Insert() then;
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