codeunit 50100 MyCodeunit
{
    [EventSubscriber(ObjectType::Table, database::Customer, 'OnBeforeIsContactUpdateNeeded', '', true, true)]
    local procedure DisplayMessageOnInsertCustomer(Customer: Record Customer; xCustomer: Record Customer; UpdateNeeded: Boolean);
    begin
        Message('Foo');
    end;
}