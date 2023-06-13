enum 50100 PermissionProviderFeature implements IUserPermissionProvider
{
    Extensible = true;

    value(0; Legacy)
    {
        Implementation = IUserPermissionProvider = LegacyPermissionProvider;
    }
    value(1; Modern)
    {
        Implementation = IUserPermissionProvider = ModernPermissionProvider;
    }
}
