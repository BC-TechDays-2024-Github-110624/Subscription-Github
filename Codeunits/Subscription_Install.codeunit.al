codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        RLAN_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    local procedure RLAN_Test()
    var
        RLANTest: Record "RLAN Test";
    begin
        RLANTest.Code := 'RLAN';
        RLANTest.Description := 'René';
        if RLANTest.Insert() then;
    end;
}