.class final Lcom/acquariusoft/UpdateMe/PreferencePage/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/m;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/m;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;

    invoke-virtual {v1}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/acquariusoft/UpdateMe/activity/ActivityEditScript;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/PreferencePage/m;->a:Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/acquariusoft/UpdateMe/PreferencePage/PrefsFragmentScript;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x0

    return v0
.end method
