
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
            action(GetAddress)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    AddressProvider: Interface IUserPermissionProvider;
                begin
                    GetUserPermissionFactory(AddressProvider);
                    Message(AddressProvider.GetUserPermissions());
                end;
            }
        }
    }

    local procedure GetUserPermissionFactory(var IUserPermissionProvider: Interface IUserPermissionProvider)
    var
        FeatureManagementFacade: Codeunit "Feature Management Facade";
        FeatureFlaglbl: Label 'HideLegacyUserGroups';
    begin
        if FeatureManagementFacade.IsEnabled(FeatureFlaglbl) then
            permissionProviderFeature := permissionProviderFeature::Modern
        else
            permissionProviderFeature := permissionProviderFeature::Legacy;

        IUserPermissionProvider := permissionProviderFeature;
    end;

    var
        permissionProviderFeature: enum PermissionProviderFeature;
}