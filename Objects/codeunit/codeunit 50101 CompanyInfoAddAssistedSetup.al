codeunit 50101 CompanyInfoAddAssistedSetup
{


    [EventSubscriber(ObjectType::Table, 1808, 'OnRegisterAssistedSetup', '', false, false)]
    local procedure "AggregatedAssistedSetup.OnRegisterAssistedSetup"(var TempAggregatedAssistedSetup: Record 1808 TEMPORARY);
    var
        CompanyInformation: Record 79;
    begin
        TempAggregatedAssistedSetup.AddExtensionAssistedSetup(PAGE::"Company Information Wizard", 'Setup Company Information',true, CompanyInformation.RECORDID, GetCompanyInformationSetupStatus(TempAggregatedAssistedSetup), '');
    end;

    local procedure GetCompanyInformationSetupStatus(AggregatedAssistedSetup: Record "Aggregated Assisted Setup"): Integer;
    var
        CompanyInformation: Record "Company Information";
    begin
        WITH AggregatedAssistedSetup DO
        BEGIN
            IF CompanyInformation.GET THEN
                IF(CompanyInformation.Name = '') OR(CompanyInformation."E-Mail" = '') THEN
                    Status := Status::"Not Completed"
                ELSE
                    Status := Status::Completed
            ELSE
                Status := Status::"Not Completed";
            EXIT(Status);
        END;
    end;

}