codeunit 50102 CompanyInfoNotComplete
{

    procedure ShowCompanyInfoWizard(TheNotification: Notification);
    begin
        Page.Run(Page::"Company Information Wizard");
    end;


    [EventSubscriber(ObjectType::Page, 42, 'OnOpenPageEvent', '', false, false)]
    local procedure CheckCompanyInfo_OnOpenSalesOrder(var Rec: Record 36);
    var
        CompInfo : Record "Company Information";
        TheNot : Notification;
    begin
        if CompInfo.Get then
            if CompInfo.Name <> '' then
                exit;


        // TheNot.Id= '970dbb79-0413-4d27-baca-0bf651959fce';
        // thenot.Message('Comp info not complete fill in name!');
      
    end;

}