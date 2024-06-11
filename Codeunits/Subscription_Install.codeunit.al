codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        AOT_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    procedure AOT_Test()
    var
        AOT_Test: Record AOT_Test;
    begin
        AOT_Test.Init();
        AOT_Test.Code := 'AOT';
        AOT_Test.Description := 'Anton';
        if AOT_Test.Insert() then;
    end;
}