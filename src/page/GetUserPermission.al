
page 50100 GetUserPermission
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Get User Permission';

    layout
    {
        area(Content)
        {
            group(MyGroup)
            {

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(GetUserPermission)
            {
                ApplicationArea = All;
                Caption = 'Get User Permission';
                Image = Permission;

                trigger OnAction()
                var
                    AddressProvider: Interface IUserPermissionProvider;
                    PermissionProviderMgt: Codeunit PermissionProviderMgt;
                begin
                    PermissionProviderMgt.SetUserPermissionProvider();
                    PermissionProviderMgt.UserPermissionProviderFactory(AddressProvider);
                    Message(AddressProvider.GetUserPermissions());
                end;
            }
        }
    }
}