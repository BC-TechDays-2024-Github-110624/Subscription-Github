codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        BF_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    procedure BF_Test()
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