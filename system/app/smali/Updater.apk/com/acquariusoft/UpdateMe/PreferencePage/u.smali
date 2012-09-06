.class final Lcom/acquariusoft/UpdateMe/PreferencePage/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/u;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/u;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;

    new-instance v1, Lcom/acquariusoft/UpdateMe/f;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/u;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;

    invoke-virtual {v2}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/u;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;

    invoke-direct {v1, v2, v3}, Lcom/acquariusoft/UpdateMe/f;-><init>(Landroid/app/Activity;Landroid/preference/PreferenceFragment;)V

    iput-object v1, v0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;->b:Lcom/acquariusoft/UpdateMe/f;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/u;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentSettings;->b:Lcom/acquariusoft/UpdateMe/f;

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/f;->b()V

    const/4 v0, 0x0

    return v0
.end method
