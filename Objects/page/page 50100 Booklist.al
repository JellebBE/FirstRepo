page 50100 "Book list"
{
    PageType = List;    
    SourceTable = Book;
    CardPageId = "Book Card";
    UsageCategory=Lists;
    layout
    {
        area(content)
        {
            repeater(Books)
            {
               field("No.";"No.")
               {
                   ApplicationArea=All;
               }
               field(Title;Title)
               {
                   ApplicationArea=All;
               }
               field(Author;Author)
               {
                   ApplicationArea=All;
               }
               field(HardCover;HardCover)  {
                   ApplicationArea=All;
               } 
               field(NumberOfPages;NumberOfPages){
                   ApplicationArea=All;
               }

            }
        }
    }
}