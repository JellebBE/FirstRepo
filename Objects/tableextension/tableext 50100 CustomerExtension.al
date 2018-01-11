tableextension 50100 CustomerExtension extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50100;FavoriteBook;Code[10])
        {
            CaptionML=ENU='Favorite Book';
            TableRelation= Book."No.";
        }
        modify(Name){
            trigger OnAfterValidate();
            begin
                
            end;
        }
    }
    //no global var on extension table
}