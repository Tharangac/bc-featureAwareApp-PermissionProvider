codeunit 50102 PermissionProviderMgt
{
    SingleInstance = true;

    procedure SetUserPermissionProvider()
    var
        FeatureManagementFacade: Codeunit "Feature Management Facade";
        FeatureFlaglbl: Label 'HideLegacyUserGroups';
    begin
        if FeatureManagementFacade.IsEnabled(FeatureFlaglbl) then
            permissionProviderFeature := permissionProviderFeature::Modern
        else
            permissionProviderFeature := permissionProviderFeature::Legacy;
    end;

    procedure UserPermissionProviderFactory(var IUserPermissionProvider: Interface IUserPermissionProvider)
    begin
        IUserPermissionProvider := permissionProviderFeature;
    end;

    var
        permissionProviderFeature: enum PermissionProviderFeature;
}
