profile JelleProfile 
{
    Description = 'Jelle zijn profiel';
    RoleCenter = "Order Processor Role Center";
    Customizations = CustomerListCustomization ;
}


pagecustomization CustomerListCustomization customizes "Customer List"
{
    layout
    {
        modify(Name){
            Visible=false;
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    
    //Variables, procedures and triggers are not allowed on Page Customizations
}