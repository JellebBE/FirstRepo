pageextension 50100 "Customer Card Extension" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field(FavoriteBook;FavoriteBook)
            {
                ApplicationArea=All;
            }
        }
        
    }

    actions
    {
        // Add changes to page actions here
    }
    
  //allways remove global var!
}