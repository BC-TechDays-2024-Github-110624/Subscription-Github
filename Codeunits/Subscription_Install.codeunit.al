codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        AnRa_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    local procedure AnRa_Test()
    var
        ARA_Test: Record AnRa_Test;
    begin
        ARA_Test.Code := 'AnRa';
        ARA_Test.Description := 'Andreas Rascher';
        ARA_Test.Insert(true);
    end;
}