.class final Lcom/acquariusoft/UpdateMe/PreferencePage/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/j;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5

    new-instance v1, Lcom/acquariusoft/UpdateMe/a;

    sget-object v0, Lcom/acquariusoft/UpdateMe/an;->d:Lcom/acquariusoft/UpdateMe/UpdateMeActivity;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/j;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;

    invoke-direct {v1, v0, v2}, Lcom/acquariusoft/UpdateMe/a;-><init>(Landroid/app/Activity;Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/j;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentInstalledApps;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acquariusoft/UpdateMe/b/e;

    iput-object v0, v1, Lcom/acquariusoft/UpdateMe/a;->a:Lcom/acquariusoft/UpdateMe/b/e;

    invoke-virtual {v1}, Lcom/acquariusoft/UpdateMe/a;->a()V

    const/4 v0, 0x0

    return v0
.end method
